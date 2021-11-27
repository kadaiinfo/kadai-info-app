import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/application/timetable/timetable_application_provider.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_lesson_list/timetable_lesson_list_controller.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_lesson_list/timetable_lesson_list_state.dart';

final timetableLessonListControllerProvider = StateNotifierProvider.autoDispose
    .family<TimetableLessonListController, AsyncValue<TimetableLessonListState>,
        int>(
  (ref, year) => TimetableLessonListController(
    app: ref.read(timetableApplicationProvider),
  ),
);
