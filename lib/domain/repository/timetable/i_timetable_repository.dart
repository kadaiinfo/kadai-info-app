// Project imports:
import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/domain/entity/timetable/timetable.dart';
import 'package:kadai_info_flutter/domain/entity/timetable/timetable_lesson.dart';

abstract class ITimetableRepository {
  /// 時間割の取得
  Future<Result<Timetable>> getTimetable();

  /// 時間割の作成/更新
  Future<Result<Timetable>> saveTimetable();

  /// 時間割の削除
  Future<Result<Timetable>> deleteTimetable();

  /// 授業の更新
  Future<Result<TimetableLesson>> updateLesson();

  /// 授業の削除
  Future<void> deleteLesson();
}
