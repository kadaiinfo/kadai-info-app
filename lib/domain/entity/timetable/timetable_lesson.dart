import 'package:equatable/equatable.dart';
import 'package:kadai_info_flutter/domain/entity/timetable/timetable_subject.dart';

/// 授業
class TimetableLesson extends Equatable {
  /// ID
  final String id;

  /// 教科
  final TimetableSubject subject;

  /// 曜日
  final int day;

  /// 限目
  final int period;

  /// 時間割ID
  final String timetableId;

  /// コマの色
  final int boardColor;

  const TimetableLesson({
    required this.id,
    required this.subject,
    required this.day,
    required this.period,
    required this.timetableId,
    required this.boardColor,
  });

  @override
  List<Object?> get props => [id];
}
