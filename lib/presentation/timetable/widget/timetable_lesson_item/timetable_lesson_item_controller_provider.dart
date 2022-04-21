// Package imports:
import 'package:equatable/equatable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/application/timetable/timetable_application_provider.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_lesson_item/timetable_lesson_item_controller.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_lesson_list/timetable_lesson_list_controller_provider.dart';
import 'timetable_lesson_item_state.dart';

final timetableLessonItemControllerProvider = StateNotifierProvider.autoDispose
    .family<TimetableLessonItemController, TimetableLessonItemState,
        TimetableLessonItemArgument>(
  (ref, arg) {
    const _state = TimetableLessonItemState();
    final lessons = ref.watch(timetableLessonListControllerProvider(arg.year)
        .select((value) => value.value?.lessons.where((element) =>
            element.day == arg.day && element.period == arg.period)));
    if (lessons == null || lessons.isEmpty) {
      return TimetableLessonItemController(
        app: ref.read(timetableApplicationProvider),
        year: arg.year,
        day: arg.day,
        period: arg.period,
        state: _state,
      );
    }
    final lesson = lessons.first;
    return TimetableLessonItemController(
      app: ref.read(timetableApplicationProvider),
      year: arg.year,
      day: arg.day,
      period: arg.period,
      state: _state.copyWith(
        name: lesson.name,
        room: lesson.room,
      ),
    );
  },
);

class TimetableLessonItemArgument extends Equatable {
  final int year;
  final int day;
  final int period;

  const TimetableLessonItemArgument({
    required this.period,
    required this.day,
    required this.year,
  });

  @override
  List<Object?> get props => [year, day, period];
}
