import 'dart:typed_data';

extension Uint8ListExt on Uint8List {
  /// リトルエンディアンから変換
  int get toNumberFromLittleEndian {
    final reversedData = Uint8List.fromList(reversed.toList());
    return reversedData.buffer.asByteData().getInt32(0);
  }

  /// ビッグエンディアンから変換
  int get toNumberFromBigEndian {
    return buffer.asByteData().getInt32(0);
  }

  /// 16進数から変換
  int get toNumberFromHex {
    final paddedValue = map((e) => e.toRadixString(16).padLeft(2, '0')).join();
    return int.parse(paddedValue);
  }
}
