import 'package:kadai_info_flutter/domain/entity/timetable/timetable_lesson.dart';

class TimetableApplication {
  /// 時間割年度の取得
  Future<int> getTimetableYear() async {
    return 2021;
  }

  /// コマの取得
  Future<TimetableLesson> getLesson({
    required int year,
    required int day,
    required int period,
  }) async {
    throw Exception();
  }

  /// 授業の更新
  Future<TimetableLesson> updateLesson() async {
    throw Exception();
  }

  /// 授業の削除
  Future<void> deleteLesson() async {}

  /// 授業の作成
  Future<TimetableLesson> createLesson() async {
    throw Exception();
  }
}
