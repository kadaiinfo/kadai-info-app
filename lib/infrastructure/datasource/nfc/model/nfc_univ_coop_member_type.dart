enum NfcUnivCoopMemberType {
  /// 組合員
  union,

  /// 不明
  unknown,
}

extension IntExt on int {
  NfcUnivCoopMemberType get toMemberShip {
    switch (this) {
      case 4:
        return NfcUnivCoopMemberType.union;
      default:
        return NfcUnivCoopMemberType.unknown;
    }
  }
}
