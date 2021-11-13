import 'dart:typed_data';

import 'package:kadai_info_flutter/core/extension/uint8list_extension.dart';

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
    final balanceData = block.sublist(0, 4);
    final countData = block.sublist(13, 16);
    return NfcUnivCoopPrepaidBalance(
      balance: balanceData.toNumberFromLittleEndian,
      count: countData.toNumberFromHex,
    );
  }
}
