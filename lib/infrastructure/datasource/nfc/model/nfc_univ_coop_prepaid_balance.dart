import 'dart:typed_data';

/// 大学生協の残額情報
class NfcUnivCoopPrepaidBalance {
  /// 残額
  final int balance;

  /// 利用回数
  final int count;

  NfcUnivCoopPrepaidBalance({
    required this.balance,
    required this.count,
  });

  factory NfcUnivCoopPrepaidBalance.from(Uint8List block) {
    final balanceData =
        Uint8List.fromList(block.sublist(0, 4).reversed.toList());
    final countData = block.sublist(13, 17);
    return NfcUnivCoopPrepaidBalance(
      balance: balanceData.buffer.asByteData().getInt32(0),
      count: int.parse(countData.join()),
    );
  }
}
