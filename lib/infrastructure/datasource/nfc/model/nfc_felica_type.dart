enum NfcFeliCaType {
  univ,
  univUser,
  unknown,
}

extension NfcFeliCaTypeExt on NfcFeliCaType {
  List<int> get systemCode {
    switch (this) {
      case NfcFeliCaType.univ:
        return [0xFE, 0x00];
      case NfcFeliCaType.univUser:
        return [0x83, 0x65];
      default:
        return [0xFF];
    }
  }
}
