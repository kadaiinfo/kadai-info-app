import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_timetable_attendance.dart';

import '../sqflite_extension.dart';

/// 授業
class SQFTimetableLesson {
  static const keyTimetableId = 'timetable_id';
  static const keyDay = 'day';
  static const keyPeriod = 'period';
  static const keyName = 'name';
  static const keyTeacher = 'teacher';
  static const keyDescription = 'description';
  static const keyMemo = 'memo';
  static const keyAttendance = 'attendance';
  static const keyCreatedAt = 'created_at';
  static const keyUpdatedAt = 'updated_at';

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

  /// 出席情報
  final SQFTimetableAttendance attendance;

  /// 作成日時
  final DateTime createdAt;

  /// 更新日時
  final DateTime updatedAt;

  SQFTimetableLesson._({
    required this.attendance,
    required this.name,
    required this.timetableId,
    required this.description,
    required this.day,
    required this.memo,
    required this.period,
    required this.teacher,
    required this.updatedAt,
    required this.createdAt,
  });

  factory SQFTimetableLesson.from(Map<String, dynamic> map) {
    return SQFTimetableLesson._(
      attendance: SQFTimetableAttendance.from(map[keyAttendance]),
      name: map[keyName],
      timetableId: map[keyTimetableId],
      description: map[keyDescription],
      day: map[keyDay],
      memo: map[keyMemo],
      period: map[keyPeriod],
      teacher: map[keyTeacher],
      updatedAt: (map[keyUpdatedAt] as int).toDateTime,
      createdAt: (map[keyCreatedAt] as int).toDateTime,
    );
  }

  /// [SQFTimetableLesson] to [Map]
  Map<String, dynamic> toMap() {
    return {
      keyName: name,
      keyDescription: description,
      keyAttendance: attendance.toMap(),
      keyDay: day,
      keyPeriod: period,
      keyTeacher: teacher,
      keyMemo: memo,
      keyTimetableId: timetableId,
      keyCreatedAt: createdAt.toInt,
      keyUpdatedAt: updatedAt.toInt,
    };
  }
}
