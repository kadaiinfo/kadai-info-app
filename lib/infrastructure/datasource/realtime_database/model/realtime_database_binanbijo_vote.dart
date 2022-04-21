// Package imports:
import 'package:firebase_database/firebase_database.dart';

class RealtimeDatabaseBinanbijoVote {
  static const keyEntryNumber = 'entryNumber';
  static const keyGender = 'gender';
  static const keyIsStudent = 'isStudent';
  static const keyCreatedAt = 'createdAt';

  final int entryNumber;
  final String gender;
  final bool isStudent;
  final DateTime createdAt;

  RealtimeDatabaseBinanbijoVote(
      {required this.entryNumber,
      required this.gender,
      required this.isStudent,
      required this.createdAt
      });

  /// RealtimeDatabaseに保存する際のデータに変換
  Map<String, dynamic> toMap() {
    return {
      'entryNumber': entryNumber,
      'gender': gender,
      'isStudent': isStudent,
      'createdAt': createdAt.toIso8601String()
    };
  }
}
