import '../sqflite_extension.dart';

/// 授業の出席情報
class SQFTimetableAttendance {
  static const keyLessonId = 'lesson_id';
  static const keyAttendCount = 'attend_count';
  static const keyLateCount = 'late_count';
  static const keyAbsenceCount = 'absence_count';
  static const keyCreatedAt = 'created_at';
  static const keyUpdatedAt = 'updated_at';

  /// 授業ID
  final String lessonId;

  /// 出席回数
  final int attendCount;

  /// 遅刻回数
  final int lateCount;

  /// 欠席回数
  final int absenceCount;

  /// 作成日時
  final DateTime createdAt;

  /// 更新日時
  final DateTime updatedAt;

  SQFTimetableAttendance({
    required this.absenceCount,
    required this.attendCount,
    required this.lateCount,
    required this.lessonId,
    required this.updatedAt,
    required this.createdAt,
  });

  /// [Map] to [SQFTimetableAttendance]
  factory SQFTimetableAttendance.from(Map<String, dynamic> map) {
    return SQFTimetableAttendance(
      absenceCount: map[keyAbsenceCount],
      attendCount: map[keyAttendCount],
      lateCount: map[keyLateCount],
      lessonId: map[keyLessonId],
      updatedAt: (map[keyUpdatedAt] as int).toDateTime,
      createdAt: (map[keyCreatedAt] as int).toDateTime,
    );
  }

  /// [SQFTimetableAttendance] to [Map]
  Map<String, dynamic> toMap() {
    return {
      keyLessonId: lessonId,
      keyAttendCount: attendCount,
      keyLateCount: lateCount,
      keyAbsenceCount: absenceCount,
      keyCreatedAt: createdAt.toInt,
      keyUpdatedAt: updatedAt.toInt,
    };
  }
}
