import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/presentation/balance/widget/univ_coop_card_info/widget/balance_info.dart';

/// ミール残高
class MealBalance extends StatelessWidget {
  const MealBalance({
    Key? key,
    required this.balance,
    required this.isMealUser,
  }) : super(key: key);

  final String balance;
  final bool isMealUser;

  @override
  Widget build(BuildContext context) {
    if (!isMealUser) {
      return const SizedBox();
    }
    return BalanceInfo(
      type: BalanceInfoType.meal,
      balance: balance,
    );
  }
}
