import 'package:equatable/equatable.dart';

/// 教科
class TimetableSubject extends Equatable {
  /// ID
  final String id;

  /// 名前
  final String name;

  /// 教師
  final List<String> teachers;

  /// 概要
  final String description;

  /// 授業ID
  final String timetableLessonId;

  const TimetableSubject({
    required this.id,
    required this.name,
    required this.description,
    required this.teachers,
    required this.timetableLessonId,
  });

  @override
  List<Object?> get props => [id];
}
