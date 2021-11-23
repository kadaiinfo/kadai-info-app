import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_timetable_attendance_type.dart';

import '../sqflite_extension.dart';

/// 授業の出席情報
class SQFTimetableAttendance {
  static const keyId = 'id';
  static const keyLessonId = 'lesson_id';
  static const keyCreatedAt = 'created_at';
  static const keyUpdatedAt = 'updated_at';
  static const keyType = 'type';

  /// ID
  final String id;

  /// 授業ID
  final String lessonId;

  /// 出欠タイプ
  final SQFTimetableAttendanceType type;

  /// 作成日時
  final DateTime createdAt;

  /// 更新日時
  final DateTime updatedAt;

  SQFTimetableAttendance({
    required this.lessonId,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
    required this.type,
  });

  /// [Map] to [SQFTimetableAttendance]
  factory SQFTimetableAttendance.from(Map<String, dynamic> map) {
    return SQFTimetableAttendance(
      type: SQFTimetableAttendanceType.values[map[keyType]],
      lessonId: map[keyLessonId],
      updatedAt: (map[keyUpdatedAt] as int).toDateTime,
      createdAt: (map[keyCreatedAt] as int).toDateTime,
      id: map[keyId],
    );
  }

  /// [SQFTimetableAttendance] to [Map]
  Map<String, dynamic> toMap() {
    return {
      keyLessonId: lessonId,
      keyCreatedAt: createdAt.toInt,
      keyUpdatedAt: updatedAt.toInt,
      keyId: id,
      keyType: type.index,
    };
  }
}
