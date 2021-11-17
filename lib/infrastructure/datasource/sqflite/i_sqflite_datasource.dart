import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_article.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_article_table.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_timetable.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_timetable_lesson_save_input.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_timetable_term.dart';

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

  /// 時間割の保存
  Future<void> saveTimetable({
    required int year,
    required SQFTimetableTerm term,
  });

  /// 授業の保存
  Future<void> saveTimetableLesson(SQFTimetableLessonSaveInput input);

  /// 授業の削除
  Future<void> deleteTimetableLesson(String lessonId);

  /// 出欠情報の保存
  Future<void> saveTimetableAttendance();

  /// 出欠情報の削除
  Future<void> deleteTimetableAttendance(String attendanceId);
}
