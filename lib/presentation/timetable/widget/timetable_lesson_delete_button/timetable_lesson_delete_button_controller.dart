// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_lesson_delete_button/timetable_lesson_delete_button_state.dart';

class TimetableLessonDeleteButtonController
    extends StateNotifier<TimetableLessonDeleteButtonState> {
  TimetableLessonDeleteButtonController()
      : super(TimetableLessonDeleteButtonState());

  /// 授業を削除
  Future<void> deleteLesson() async {}

  Future<void> showConfirmText() async {
    state = state.copyWith(
      text: 'もう一度\nタップで削除',
      isConfirmed: true,
    );
  }
}
