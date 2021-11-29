/// 学生証
class UnivUserCard {
  /// 学籍番号
  final int studentNumber;

  // 有効期限
  final DateTime expiryAt;

  UnivUserCard({
    required this.studentNumber,
    required this.expiryAt,
  });
}
