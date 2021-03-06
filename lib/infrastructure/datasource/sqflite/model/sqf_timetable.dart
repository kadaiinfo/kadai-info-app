// Project imports:
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_timetable_term.dart';
import '../sqflite_extension.dart';

/// 時間割
class SQFTimetable {
  static const keyId = 'id';
  static const keyYear = 'year';
  static const keyTerm = 'term';
  static const keyCreatedAt = 'created_at';
  static const keyUpdatedAt = 'updated_at';

  /// ID
  final String id;

  /// 年度
  final int year;

  /// 期間
  final SQFTimetableTerm term;

  /// 作成日時
  final DateTime createdAt;

  /// 更新日時
  final DateTime updatedAt;

  SQFTimetable({
    required this.id,
    required this.year,
    required this.term,
    required this.updatedAt,
    required this.createdAt,
  });

  /// [Map] to [SQFTimetable]
  factory SQFTimetable.from(Map<String, dynamic> map) {
    return SQFTimetable(
      id: map[keyId],
      year: map[keyYear],
      term: SQFTimetableTerm.values[map[keyTerm]],
      createdAt: (map[keyCreatedAt] as int).toDateTime,
      updatedAt: (map[keyUpdatedAt] as int).toDateTime,
    );
  }

  /// [SQFTimetable] to [Map]
  Map<String, dynamic> toMap() {
    return {
      keyId: id,
      keyYear: year,
      keyTerm: term.index,
      keyCreatedAt: createdAt.toInt,
      keyUpdatedAt: updatedAt.toInt,
    };
  }
}
