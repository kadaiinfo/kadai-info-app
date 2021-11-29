import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreBinanbijoVote {
  static const keyEntryNumber = 'entryNumber';
  static const keyGender = 'gender';
  static const keyIsStudent = 'isStudent';
  static const keyCreatedAt = 'createdAt';

  final int entryNumber;
  final String gender;
  final bool isStudent;
  final DateTime createdAt;

  FirestoreBinanbijoVote(
      {required this.entryNumber,
      required this.gender,
      required this.isStudent,
      required this.createdAt
      });

  /// Firestoreに保存する際のデータに変換
  Map<String, dynamic> toMap() {
    return {
      'entryNumber': entryNumber,
      'gender': gender,
      'isStudent': isStudent,
      'createdAt': Timestamp.fromDate(createdAt)
    };
  }
}
