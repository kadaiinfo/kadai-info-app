import 'package:kadai_info_flutter/domain/entity/univ_coop_card/univ_coop_prepaid_transaction.dart';

/// 大学生協プリペイド情報
class UnivCoopPrepaidInfo {
  /// 残高
  final int balance;

  /// 利用履歴
  final List<UnivCoopPrepaidTransaction> transactions;

  UnivCoopPrepaidInfo({
    required this.balance,
    required this.transactions,
  });
}
