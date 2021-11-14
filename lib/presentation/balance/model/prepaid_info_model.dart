import 'package:kadai_info_flutter/presentation/balance/model/prepaid_transaction_model.dart';

class PrepaidInfoModel {
  /// 残額
  final String balance;

  /// ポイント
  final String point;

  /// 利用履歴
  final List<PrepaidTransactionModel> transactions;

  PrepaidInfoModel({
    required this.balance,
    required this.point,
    this.transactions = const [],
  });
}
