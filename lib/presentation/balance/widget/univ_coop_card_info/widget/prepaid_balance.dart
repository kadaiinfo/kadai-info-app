// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:kadai_info_flutter/presentation/balance/widget/univ_coop_card_info/widget/balance_info.dart';

/// プリペイド残高
class PrepaidBalance extends StatelessWidget {
  const PrepaidBalance({
    Key? key,
    required this.point,
    required this.balance,
  }) : super(key: key);

  final String balance;
  final String point;

  @override
  Widget build(BuildContext context) {
    return BalanceInfo(
      type: BalanceInfoType.prepaid,
      balance: balance,
      point: point,
    );
  }
}
