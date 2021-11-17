import 'package:equatable/equatable.dart';
import 'package:kadai_info_flutter/domain/entity/timetable/timetable_lesson.dart';

/// 時間割
class Timetable extends Equatable {
  /// ID
  final String id;

  /// 授業一覧
  final List<TimetableLesson> lessons;

  /// 登録年
  final int year;

  /// 登録区間
  final int term;

  const Timetable({
    required this.id,
    required this.year,
    required this.lessons,
    required this.term,
  });

  @override
  List<Object?> get props => [id];
}
