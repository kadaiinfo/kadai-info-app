class SQFBinanbijoVote {
  static const keyEntryNumber = 'entryNumber';
  static const keyGender = 'gender';
  static const keyIsStudent = 'isStudent';
  static const keyCreatedAt = 'createdAt';


  final int entryNumber;
  final String gender;
  final bool isStudent;
  final DateTime createdAt;

  SQFBinanbijoVote(
      {required this.entryNumber,
      required this.gender,
      required this.isStudent,
      required this.createdAt
      });

  /// データベースのデータから生成
  factory SQFBinanbijoVote.fromMap(Map<String, dynamic> map) {
    return SQFBinanbijoVote(
        entryNumber: map['entryNumber'],
        gender: map['gender'],
        isStudent: map['isStudent'] == 1,
        createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'])
        );
  }

  /// データベースに保存する際のデータに変換
  Map<String, dynamic> toMap() {
    return {
      'entryNumber': entryNumber,
      'gender': gender,
      'isStudent': isStudent ? 1 : 0,
      'createdAt': createdAt.millisecondsSinceEpoch
    };
  }
}
