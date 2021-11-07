import 'package:kadai_info_flutter/domain/entity/timetable/timetable_subject.dart';

/// 授業
class TimetableLesson {
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

  TimetableLesson({
    required this.id,
    required this.subject,
    required this.day,
    required this.period,
    required this.timetableId,
  });
}
