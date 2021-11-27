import 'package:equatable/equatable.dart';

/// 教科
class TimetableSubject extends Equatable {
  /// ID
  final String id;

  /// 名前
  final String name;

  /// 教師
  final String? teacher;

  /// 概要
  final String? description;

  /// 授業ID
  final String timetableLessonId;

  final String? room;

  const TimetableSubject({
    required this.id,
    required this.name,
    this.description,
    this.teacher,
    required this.timetableLessonId,
    this.room,
  });

  @override
  List<Object?> get props => [id];
}
