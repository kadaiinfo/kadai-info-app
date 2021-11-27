enum NfcFeliCaType {
  univ,
  unknown,
}

extension NfcFeliCaTypeExt on NfcFeliCaType {
  List<int> get systemCode {
    switch (this) {
      case NfcFeliCaType.univ:
        return [0xFE, 0x00];
      default:
        return [0xFF];
    }
  }
}
