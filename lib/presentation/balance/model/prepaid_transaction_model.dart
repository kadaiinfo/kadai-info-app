import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/core/constant/app_constant.dart';
import 'package:kadai_info_flutter/core/extension/datetime_extension.dart';
import 'package:kadai_info_flutter/domain/entity/univ_coop_card/univ_coop_prepaid_transaction.dart';

/// 利用履歴
class PrepaidTransactionModel {
  /// 取引日時
  final String tradedAt;

  /// 利用タイプ
  final String type;

  /// 利用額
  final String amount;

  /// サイドカラー
  final Color sideColor;

  PrepaidTransactionModel({
    required this.sideColor,
    required this.type,
    required this.amount,
    required this.tradedAt,
  });

  /// [UnivCoopPrepaidTransaction]から変換
  factory PrepaidTransactionModel.from(UnivCoopPrepaidTransaction transaction) {
    return PrepaidTransactionModel(
      sideColor: transaction.isCharge ? Colors.green : Colors.red,
      type: transaction.isCharge ? 'チャージ' : '支払',
      amount: '${AppConstant.currencyUnit}${transaction.amount}',
      tradedAt: transaction.tradedAt.toDot,
    );
  }
}
