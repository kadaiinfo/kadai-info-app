import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kadai_info_flutter/presentation/timetable/model/timetable_lesson_model.dart';

part 'timetable_lesson_list_state.freezed.dart';

@freezed
class TimetableLessonListState with _$TimetableLessonListState {
  const factory TimetableLessonListState({
    @Default([]) List<TimetableLessonModel> lessons,
    required int year,
  }) = _TimetableLessonListState;
}
