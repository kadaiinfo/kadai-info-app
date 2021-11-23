import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_article.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_article_table.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_timetable.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_timetable_attendance.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_timetable_attendance_type.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_timetable_lesson.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_timetable_lesson_save_input.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_timetable_term.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_binanbijo_vote.dart';

abstract class ISqfliteDatasource {
  /// 記事一覧
  Future<Result<SQFArticleTable>> findAllArticles({
    required int limit,
    required int offset,
  });

  /// 記事の保存
  Future<Result<SQFArticle>> saveArticle(String articleId);

  /// 記事の削除
  Future<Result<SQFArticle>> deleteArticle(String articleId);

  /// 記事の存在
  Future<Result<SQFArticle?>> existArticle(String articleId);

  /// 時間割の取得
  Future<SQFTimetable> findTimetable(String timetableId);

  /// 時間割の削除
  Future<void> deleteTimetable(String timetableId);

  /// 時間割の作成
  Future<SQFTimetable> createTimetable({
    required int year,
    required SQFTimetableTerm term,
  });

  /// 授業の取得
  Future<SQFTimetableLesson> findTimetableLesson(String lessonId);

  /// 授業の作成
  Future<SQFTimetableLesson> createTimetableLesson({
    required SQFTimetableLessonSaveInput input,
  });

  /// 授業の更新
  Future<SQFTimetableLesson> updateTimetableLesson({
    required String lessonId,
    required SQFTimetableLessonSaveInput input,
  });

  /// 授業の削除
  Future<void> deleteTimetableLesson(String lessonId);

  /// 出欠情報の取得
  Future<SQFTimetableAttendance> findTimetableAttendance(String attendanceId);

  /// 出欠情報の作成
  Future<SQFTimetableAttendance> createTimetableAttendance({
    required String lessonId,
    required SQFTimetableAttendanceType type,
  });

  /// 出欠情報の更新
  Future<SQFTimetableAttendance> updateTimetableAttendance({
    required String attendanceId,
    required String lessonId,
    required SQFTimetableAttendanceType type,
  });

  /// 出欠情報の削除
  Future<void> deleteTimetableAttendance(String attendanceId);
  
  // 今日の投票を取得
  Future<List<SQFBinanbijoVote>> fetchDailyVote(DateTime now);

  // 投票を保存
  Future<void> saveVote(SQFBinanbijoVote vote);
}
