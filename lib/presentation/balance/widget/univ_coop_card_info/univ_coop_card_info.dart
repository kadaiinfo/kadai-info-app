import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/balance/widget/univ_coop_card_info/univ_coop_card_info_controller_provider.dart';
import 'package:kadai_info_flutter/presentation/balance/widget/univ_coop_card_info/widget/balance_introduction.dart';
import 'package:kadai_info_flutter/presentation/balance/widget/univ_coop_card_info/widget/meal_balance.dart';
import 'package:kadai_info_flutter/presentation/balance/widget/univ_coop_card_info/widget/prepaid_balance.dart';
import 'package:kadai_info_flutter/presentation/balance/widget/univ_coop_card_info/widget/prepaid_transaction_list.dart';
import 'package:kadai_info_flutter/presentation/common/error_text/error_text.dart';

class UnivCoopCardInfo extends ConsumerWidget {
  const UnivCoopCardInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(univCoopCardInfoControllerProvider);
    return asyncValue.when(
      data: (data) {
        final card = data.univCoopCard;
        return Expanded(
          child: Column(
            children: [
              /// ミール情報
              MealBalance(
                balance: card.mealInfo.balance,
                isMealUser: card.mealInfo.isMealUser,
              ),

              /// 残高情報
              PrepaidBalance(
                balance: card.prepaidInfo.balance,
                point: card.prepaidInfo.point,
              ),

              /// 利用履歴
              PrepaidTransactionList(
                transactions: data.univCoopCard.prepaidInfo.transactions,
              ),
            ],
          ),
        );
      },
      error: (error, stack) => ErrorText(error),
      loading: () => const BalanceIntroduction(),
    );
  }
}
