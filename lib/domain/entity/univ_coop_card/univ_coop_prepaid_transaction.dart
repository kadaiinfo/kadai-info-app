/// 大学生協プリペイドの利用記録
class UnivCoopPrepaidTransaction {
  /// 利用額
  final int amount;

  /// 取引日時
  final DateTime tradedAt;

  /// チャージであるか
  final bool isCharge;

  UnivCoopPrepaidTransaction({
    required this.amount,
    required this.isCharge,
    required this.tradedAt,
  });
}
