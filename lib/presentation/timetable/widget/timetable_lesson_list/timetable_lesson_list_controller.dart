import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/application/timetable/timetable_application.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_lesson_list/timetable_lesson_list_state.dart';

class TimetableLessonListController
    extends StateNotifier<AsyncValue<TimetableLessonListState>> {
  TimetableLessonListController({
    required this.app,
  }) : super(const AsyncLoading()) {
    _fetch();
  }

  final TimetableApplication app;

  /// 同期
  Future<void> _fetch() async {
    state = const AsyncData(TimetableLessonListState(year: 2021));
  }

  /// 年度の選択
  Future<void> choiceSchoolYear(int year) async {}

  /// 授業の削除
  Future<void> deleteLesson(String id) async {
    final asyncValue = state.value;
    if (asyncValue != null) {
      final lessons = asyncValue.lessons;
      lessons.removeWhere((element) => element.id == id);
      state = AsyncData(asyncValue.copyWith(lessons: lessons));
    }
  }
}
