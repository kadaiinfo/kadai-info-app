import 'package:kadai_info_flutter/core/exception/not_found_exception.dart';
import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/i_sqflite_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_article.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_article_table.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_timetable.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_timetable_attendance.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_timetable_attendance_type.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_timetable_lesson.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_timetable_lesson_save_input.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_timetable_term.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:uuid/uuid.dart';

class SqfliteDatasource implements ISqfliteDatasource {
  /// 記事関連
  static const _articleDBName = 'article.db';
  static const _articleTableName = 'article';
  static late Database _articleDB;
  static const _articleVersion = 1;

  /// 時間割関連
  static const _timetableDBName = 'timetable.db';
  static const _timetableTableName = 'timetable';
  static late Database _timetableDB;
  static const _timetableVersion = 1;
  static const _timetableLessonTableName = 'lesson';
  static const _timetableAttendanceTableName = 'attendance';

  /// 初期化
  static Future<void> init() async {
    _articleDB = await _getArticleDatabase();
    _timetableDB = await _getTimetableDatabase();
  }

  @override
  Future<Result<SQFArticleTable>> findAllArticles({
    required int limit,
    required int offset,
  }) async {
    final articleMaps = await _articleDB.query(
      _articleTableName,
      offset: offset,
      limit: limit,
      orderBy: '${SQFArticle.keyCreatedAt} DESC',
    );
    final allCount = Sqflite.firstIntValue(
          await _articleDB.rawQuery('SELECT count(*) FROM $_articleTableName'),
        ) ??
        0;

    final table = SQFArticleTable(
      articles: articleMaps.map((e) => SQFArticle.fromMap(e)).toList(),
      hasNext: offset + limit < allCount,
      hasPrevious: offset > 0 && offset + limit <= allCount,
    );
    return Result.success(table);
  }

  static Future<Database> _getArticleDatabase() async {
    try {
      final Database db = await openDatabase(
        join(await getDatabasesPath(), _articleDBName),
        version: _articleVersion,
        onCreate: (db, version) async {
          await db.execute(
            '''
            CREATE TABLE $_articleTableName (
            ${SQFArticle.keyId} TEXT PRIMARY KEY, 
            ${SQFArticle.keyCreatedAt} INTEGER,
            ${SQFArticle.keyIsFavorite} INTEGER 
            )
            ''',
          );
        },
      );
      return db;
    } catch (e) {
      rethrow;
    }
  }

  static Future<Database> _getTimetableDatabase() async {
    try {
      final Database db = await openDatabase(
        join(await getDatabasesPath(), _timetableDBName),
        version: _timetableVersion,
        onCreate: (db, version) async {
          await db.execute(
            '''
            CREATE TABLE $_timetableTableName (
            ${SQFTimetable.keyId} TEXT PRIMARY KEY, 
            ${SQFTimetable.keyTerm} INTEGER, 
            ${SQFTimetable.keyYear} INTEGER, 
            ${SQFTimetable.keyCreatedAt} INTEGER, 
            ${SQFTimetable.keyUpdatedAt} INTEGER 
            )
            ''',
          );
        },
      );
      return db;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Result<SQFArticle>> deleteArticle(String articleId) async {
    try {
      await _articleDB.delete(
        _articleTableName,
        where: '${SQFArticle.keyId}=?',
        whereArgs: [articleId],
      );
      final article = SQFArticle(
        id: articleId,
        createdAt: DateTime.now(),
        isFavorite: false,
      );
      return Result.success(article);
    } catch (e) {
      return Result.failure(Exception(e));
    }
  }

  @override
  Future<Result<SQFArticle>> saveArticle(String articleId) async {
    try {
      final article = SQFArticle(
        id: articleId,
        createdAt: DateTime.now(),
        isFavorite: true,
      );
      final data = article.toMap();
      await _articleDB.insert(
        _articleTableName,
        data,
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      return Result.success(article);
    } catch (e) {
      return Result.failure(Exception(e));
    }
  }

  @override
  Future<Result<SQFArticle?>> existArticle(String articleId) async {
    final data = await _articleDB.query(_articleTableName,
        where: '${SQFArticle.keyId}=?', whereArgs: [articleId], limit: 1);
    if (data.isEmpty) {
      return const Result.success(null);
    } else {
      final article = SQFArticle.fromMap(data.first);
      return Result.success(article);
    }
  }

  @override
  Future<void> deleteTimetable(String timetableId) async {
    try {
      await _timetableDB.delete(
        _timetableTableName,
        where: '${SQFTimetable.keyId}=?',
        whereArgs: [timetableId],
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> deleteTimetableLesson(String lessonId) async {
    try {
      await _timetableDB.delete(
        _timetableLessonTableName,
        where: '${SQFTimetableLesson.keyId}=?',
        whereArgs: [lessonId],
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SQFTimetable> findTimetable(String timetableId) async {
    try {
      final dataList = await _timetableDB.query(
        _timetableTableName,
        where: '${SQFTimetable.keyId}=?',
        whereArgs: [timetableId],
      );
      late final Map<String, dynamic> data;
      if (dataList.isEmpty) {
        throw NotFoundException();
      }
      data = dataList.first;
      final timetable = SQFTimetable.from(data);
      return timetable;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SQFTimetableLesson> createTimetableLesson({
    required SQFTimetableLessonSaveInput input,
  }) async {
    try {
      final id = const Uuid().v4();
      final now = DateTime.now();
      final lesson = SQFTimetableLesson(
        name: input.name,
        timetableId: input.timetableId,
        description: input.description,
        day: 1,
        memo: input.memo,
        period: 1,
        teacher: input.teacher,
        updatedAt: now,
        createdAt: now,
        id: id,
      );
      final values = lesson.toMap();
      await _timetableDB.insert(_timetableLessonTableName, values);
      final result = await _timetableDB.query(
        _timetableLessonTableName,
        where: '${SQFTimetableLesson.keyId}=?',
        whereArgs: [id],
      );
      return SQFTimetableLesson.from(result.first);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> deleteTimetableAttendance(String attendanceId) async {
    try {
      await _timetableDB.delete(
        _timetableAttendanceTableName,
        whereArgs: [attendanceId],
        where: '${SQFTimetableAttendance.keyId}=?',
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SQFTimetable> createTimetable({
    required int year,
    required SQFTimetableTerm term,
  }) async {
    try {
      final id = const Uuid().v4();
      final now = DateTime.now();
      final timetable = SQFTimetable(
        id: id,
        year: year,
        term: term,
        updatedAt: now,
        createdAt: now,
      );
      final values = timetable.toMap();
      await _timetableDB.insert(
        _timetableTableName,
        values,
      );
      final result = await findTimetable(id);
      return result;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SQFTimetableAttendance> updateTimetableAttendance({
    required String attendanceId,
    required String lessonId,
    required SQFTimetableAttendanceType type,
  }) async {
    try {
      final oldData = await findTimetableAttendance(attendanceId);
      final now = DateTime.now();
      final values = SQFTimetableAttendance(
        lessonId: lessonId,
        updatedAt: now,
        createdAt: oldData.createdAt,
        id: attendanceId,
        type: oldData.type,
      ).toMap();
      await _timetableDB.update(
        _timetableAttendanceTableName,
        values,
        where: '${SQFTimetableAttendance.keyId}=?',
        whereArgs: [attendanceId],
      );
      final result = await findTimetableAttendance(attendanceId);
      return result;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SQFTimetableLesson> updateTimetableLesson({
    required String lessonId,
    required SQFTimetableLessonSaveInput input,
  }) async {
    try {
      final oldData = await findTimetableLesson(lessonId);
      final now = DateTime.now();
      final values = SQFTimetableLesson(
        name: input.name,
        timetableId: oldData.timetableId,
        description: input.description,
        day: oldData.day,
        memo: input.memo,
        period: oldData.period,
        teacher: input.teacher,
        updatedAt: now,
        createdAt: oldData.createdAt,
        id: lessonId,
      ).toMap();
      await _timetableDB.update(
        _timetableLessonTableName,
        values,
        where: '${SQFTimetableLesson.keyId}=?',
        whereArgs: [lessonId],
      );
      final result = findTimetableLesson(lessonId);
      return result;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SQFTimetableAttendance> createTimetableAttendance({
    required String lessonId,
    required SQFTimetableAttendanceType type,
  }) async {
    try {
      final id = const Uuid().v4();
      final now = DateTime.now();
      final values = SQFTimetableAttendance(
        lessonId: lessonId,
        updatedAt: now,
        createdAt: now,
        id: id,
        type: type,
      ).toMap();
      await _timetableDB.insert(_timetableAttendanceTableName, values);
      final result = await findTimetableAttendance(id);
      return result;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SQFTimetableAttendance> findTimetableAttendance(
      String attendanceId) async {
    try {
      final result = await _timetableDB.query(
        _timetableAttendanceTableName,
        where: '${SQFTimetableAttendance.keyId}=?',
        whereArgs: [attendanceId],
      );
      return SQFTimetableAttendance.from(result.first);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SQFTimetableLesson> findTimetableLesson(String lessonId) async {
    try {
      final result = await _timetableDB.query(
        _timetableLessonTableName,
        where: '${SQFTimetableLesson.keyId}=?',
        whereArgs: [lessonId],
      );
      return SQFTimetableLesson.from(result.first);
    } catch (e) {
      rethrow;
    }
  }
}
