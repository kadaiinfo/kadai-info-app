class SQFTimetableLessonSaveInput {
  /// 時間割ID
  final String timetableId;

  /// 名前
  final String name;

  /// 教授名
  final String teacher;

  /// 概要
  final String description;

  /// メモ
  final String memo;

  SQFTimetableLessonSaveInput({
    required this.timetableId,
    required this.teacher,
    required this.description,
    required this.memo,
    required this.name,
  });
}
