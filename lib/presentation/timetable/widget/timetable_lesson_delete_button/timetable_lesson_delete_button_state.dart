import 'package:freezed_annotation/freezed_annotation.dart';

part 'timetable_lesson_delete_button_state.freezed.dart';

@freezed
class TimetableLessonDeleteButtonState with _$TimetableLessonDeleteButtonState {
  factory TimetableLessonDeleteButtonState({
    @Default('削除') String text,
  }) = _TimetableLessonDeleteButtonState;
}
