import 'dart:typed_data';

import 'package:kadai_info_flutter/core/extension/uint8list_extension.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/nfc/model/nfc_univ_coop_prepaid_usage_type.dart';

class NfcUnivCoopPrepaidTransaction {
  /// 利用額
  final int amount;

  /// 残額
  final int balance;

  /// 利用日時
  final DateTime createdAt;

  /// 利用タイプ
  final NfcUnivCoopPrepaidUsageType type;

  NfcUnivCoopPrepaidTransaction({
    required this.type,
    required this.amount,
    required this.balance,
    required this.createdAt,
  });

  factory NfcUnivCoopPrepaidTransaction.from(Uint8List block) {
    final yearData = block.sublist(0, 2);
    final monthData = block.sublist(2, 3);
    final dayData = block.sublist(3, 4);
    final hourData = block.sublist(4, 5);
    final minuteData = block.sublist(5, 6);
    final secondData = block.sublist(6, 7);
    final usageTypeData = block.sublist(7, 8);
    final amountData = block.sublist(8, 11);
    final balanceData = block.sublist(11, 14);
    return NfcUnivCoopPrepaidTransaction(
      type: usageTypeData.toNumberFromHex.toUsageType,
      amount: amountData.toNumberFromHex,
      balance: balanceData.toNumberFromHex,
      createdAt: DateTime(
        yearData.toNumberFromHex,
        monthData.toNumberFromHex,
        dayData.toNumberFromHex,
        hourData.toNumberFromHex,
        minuteData.toNumberFromHex,
        secondData.toNumberFromHex,
      ),
    );
  }
}
