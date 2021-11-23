import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/i_sqflite_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_article.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_article_table.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_timetable.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_timetable_lesson_save_input.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_timetable_term.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_binanbijo_vote.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

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

  // 美男美女投票関連
  static const _voteDBName = 'vote.db';
  static const _voteTableName = 'vote';
  static late Database _voteDB;
  static const _voteVersion = 1;

  /// 初期化
  static Future<void> init() async {
    _articleDB = await _getArticleDatabase();
    _timetableDB = await _getTimetableDatabase();
    _voteDB = await _getVoteDatabase();
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
      try {
        final Database db = await openDatabase(
          join(await getDatabasesPath(), _articleTableName),
          version: 1,
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
    } catch (e) {
      rethrow;
    }
  }

  static Future<Database> _getTimetableDatabase() async {
    try {
      try {
        final Database db = await openDatabase(
          join(await getDatabasesPath(), _timetableTableName),
          version: 1,
          onCreate: (db, version) async {
            await db.execute(
              '''
              CREATE TABLE $_timetableDB (
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
    } catch (e) {
      rethrow;
    }
  }

  static Future<Database> _getVoteDatabase() async {
    try {
      final Database db = await openDatabase(
        join(await getDatabasesPath(), _voteTableName),
        version: 1,
        onCreate: (db, version) async {
          await db.execute(
            '''
              CREATE TABLE $_voteDB (
              ${SQFBinanbijoVote.keyEntryNumber} INTEGER PRIMARY KEY, 
              ${SQFBinanbijoVote.keyGender} TEXT, 
              ${SQFBinanbijoVote.keyIsStudent} INTEGER, 
              ${SQFBinanbijoVote.keyCreatedAt} INTEGER, 
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
    // TODO: implement deleteTimetable
  }

  @override
  Future<void> deleteTimetableLesson(String lessonId) {
    // TODO: implement deleteTimetableLesson
    throw UnimplementedError();
  }

  @override
  Future<SQFTimetable> findTimetable(String timetableId) {
    // TODO: implement findTimetable
    throw UnimplementedError();
  }

  @override
  Future<void> saveTimetable(
      {required int year, required SQFTimetableTerm term}) {
    // TODO: implement saveTimetable
    throw UnimplementedError();
  }

  @override
  Future<void> saveTimetableLesson(SQFTimetableLessonSaveInput input) {
    // TODO: implement saveTimetableLesson
    throw UnimplementedError();
  }

  @override
  Future<void> deleteTimetableAttendance(String attendanceId) {
    // TODO: implement deleteTimetableAttendance
    throw UnimplementedError();
  }

  @override
  Future<void> saveTimetableAttendance() async {
    // TODO: implement saveTimetableAttendance
  }

  @override
  Future<List<SQFBinanbijoVote>> fetchDailyVote(DateTime now) async {
    final voteMaps = await _voteDB.query(
      _voteTableName,
      where: '${SQFBinanbijoVote.keyCreatedAt} '
    );
    return [];
  }

  @override
  Future<void> saveVote(SQFBinanbijoVote vote) async {
    try {
      final data = vote.toMap();
      await _voteDB.insert(
        _voteTableName,
        data,
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    } catch (e) {
      rethrow;
    }
  }
}
