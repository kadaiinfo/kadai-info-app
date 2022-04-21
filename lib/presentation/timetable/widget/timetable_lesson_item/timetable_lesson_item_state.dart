// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timetable_lesson_item_state.freezed.dart';

@freezed
class TimetableLessonItemState with _$TimetableLessonItemState {
  const factory TimetableLessonItemState({
    @Default('') String name,
    @Default('') String room,
  }) = _TimetableLessonItemState;
}
