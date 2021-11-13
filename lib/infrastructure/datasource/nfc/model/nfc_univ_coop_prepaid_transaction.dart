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
}
