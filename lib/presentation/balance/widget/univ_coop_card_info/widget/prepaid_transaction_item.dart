import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/presentation/balance/model/prepaid_transaction_model.dart';

/// 取引
class BalanceTransactionItem extends StatelessWidget {
  const BalanceTransactionItem({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  final PrepaidTransactionModel transaction;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            stops: const [0.02, 0.02],
            colors: [
              transaction.sideColor,
              Theme.of(context).scaffoldBackgroundColor
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            /// 利用タイプ
            Text(transaction.type),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                /// 利用額
                Text(
                  transaction.amount,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: transaction.sideColor,
                    fontSize: 20,
                  ),
                ),

                const SizedBox(height: 5),

                /// 利用日時
                Text(transaction.tradedAt),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
