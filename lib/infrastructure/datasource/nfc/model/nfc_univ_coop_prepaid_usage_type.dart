/// 大学生協プリペイドの利用タイプ
enum NfcUnivCoopPrepaidUsageType {
  /// 支払い
  payment,

  /// チャージ
  charge,

  /// 不明
  unknown,
}

extension IntExt on int {
  NfcUnivCoopPrepaidUsageType get toUsageType {
    switch (this) {
      case 5:
        return NfcUnivCoopPrepaidUsageType.payment;
      case 1:
        return NfcUnivCoopPrepaidUsageType.charge;
      default:
        return NfcUnivCoopPrepaidUsageType.unknown;
    }
  }
}
