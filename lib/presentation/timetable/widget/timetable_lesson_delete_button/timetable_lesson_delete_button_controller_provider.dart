import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_lesson_delete_button/timetable_lesson_delete_button_controller.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_lesson_delete_button/timetable_lesson_delete_button_state.dart';

final timetableLessonDeleteButtonControllerProvider =
    StateNotifierProvider.autoDispose<TimetableLessonDeleteButtonController,
        TimetableLessonDeleteButtonState>(
  (ref) => TimetableLessonDeleteButtonController(),
);
