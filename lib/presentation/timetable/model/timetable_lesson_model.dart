import 'package:freezed_annotation/freezed_annotation.dart';

part 'timetable_lesson_model.freezed.dart';

@freezed
class TimetableLessonModel with _$TimetableLessonModel {
  const factory TimetableLessonModel({
    required String id,
    required String name,
    required int period,
    required int day,
    @Default('') room,
    @Default('') teacher,
  }) = _TimetableLessonModel;
}
