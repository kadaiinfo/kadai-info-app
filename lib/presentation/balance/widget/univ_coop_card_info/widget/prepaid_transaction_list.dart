import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/presentation/balance/model/prepaid_transaction_model.dart';
import 'package:kadai_info_flutter/presentation/balance/widget/univ_coop_card_info/widget/prepaid_transaction_item.dart';

/// プリペイド利用履歴
class PrepaidTransactionList extends StatelessWidget {
  const PrepaidTransactionList({
    Key? key,
    required this.transactions,
  }) : super(key: key);

  final List<PrepaidTransactionModel> transactions;

  @override
  Widget build(BuildContext context) {
    if (transactions.isEmpty) {
      return const SizedBox();
    }

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: transactions.length,
          separatorBuilder: (context, index) => const SizedBox(),
          itemBuilder: (context, index) {
            final transaction = transactions[index];
            return BalanceTransactionItem(transaction: transaction);
          },
        ),
      ),
    );
  }
}
