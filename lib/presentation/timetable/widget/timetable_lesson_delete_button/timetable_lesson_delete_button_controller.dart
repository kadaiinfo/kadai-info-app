import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_lesson_delete_button/timetable_lesson_delete_button_state.dart';

class TimetableLessonDeleteButtonController
    extends StateNotifier<TimetableLessonDeleteButtonState> {
  TimetableLessonDeleteButtonController()
      : super(TimetableLessonDeleteButtonState());

  bool _isConfirmed = false;

  /// 授業を削除
  Future<void> deleteLesson() async {
    if (_isConfirmed) {
      // TODO: 削除処理
    } else {
      _isConfirmed = true;
      state = state.copyWith(text: 'もう一度\nタップで削除');
    }
  }
}
