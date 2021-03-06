// Project imports:
import '../sqflite_extension.dart';

/// 授業
class SQFTimetableLesson {
  static const keyId = 'id';
  static const keyTimetableId = 'timetable_id';
  static const keyDay = 'day';
  static const keyPeriod = 'period';
  static const keyName = 'name';
  static const keyTeacher = 'teacher';
  static const keyDescription = 'description';
  static const keyMemo = 'memo';
  static const keyCreatedAt = 'created_at';
  static const keyUpdatedAt = 'updated_at';

  /// ID
  final String id;

  /// 時間割ID
  final String timetableId;

  /// 曜日
  final int day;

  /// 時限
  final int period;

  /// 名前
  final String name;

  /// 教授名
  final String teacher;

  /// 概要
  final String description;

  /// メモ
  final String memo;

  /// 作成日時
  final DateTime createdAt;

  /// 更新日時
  final DateTime updatedAt;

  SQFTimetableLesson({
    required this.name,
    required this.timetableId,
    required this.description,
    required this.day,
    required this.memo,
    required this.period,
    required this.teacher,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  factory SQFTimetableLesson.from(Map<String, dynamic> map) {
    return SQFTimetableLesson(
      name: map[keyName],
      timetableId: map[keyTimetableId],
      description: map[keyDescription],
      day: map[keyDay],
      memo: map[keyMemo],
      period: map[keyPeriod],
      teacher: map[keyTeacher],
      updatedAt: (map[keyUpdatedAt] as int).toDateTime,
      createdAt: (map[keyCreatedAt] as int).toDateTime,
      id: map[keyId],
    );
  }

  /// [SQFTimetableLesson] to [Map]
  Map<String, dynamic> toMap() {
    return {
      keyName: name,
      keyDescription: description,
      keyDay: day,
      keyPeriod: period,
      keyTeacher: teacher,
      keyMemo: memo,
      keyTimetableId: timetableId,
      keyCreatedAt: createdAt.toInt,
      keyUpdatedAt: updatedAt.toInt,
      keyId: id,
    };
  }
}
