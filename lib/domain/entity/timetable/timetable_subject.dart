/// 教科
class TimetableSubject {
  /// ID
  final String id;

  /// 名前
  final String name;

  /// 教師
  final List<String> teachers;

  /// 概要
  final String description;

  TimetableSubject({
    required this.id,
    required this.name,
    required this.description,
    required this.teachers,
  });
}
