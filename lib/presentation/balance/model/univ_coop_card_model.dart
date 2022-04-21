// Project imports:
import 'package:kadai_info_flutter/core/constant/app_constant.dart';
import 'package:kadai_info_flutter/domain/entity/univ_coop_card/univ_coop_card.dart';
import 'package:kadai_info_flutter/presentation/balance/model/meal_info_model.dart';
import 'package:kadai_info_flutter/presentation/balance/model/prepaid_info_model.dart';
import 'package:kadai_info_flutter/presentation/balance/model/prepaid_transaction_model.dart';

class UnivCoopCardModel {
  /// プリペイド情報
  final PrepaidInfoModel prepaidInfo;

  /// ミール情報
  final MealInfoModel mealInfo;

  UnivCoopCardModel._({
    required this.prepaidInfo,
    required this.mealInfo,
  });

  factory UnivCoopCardModel.from(UnivCoopCard univCoopCard) {
    return UnivCoopCardModel._(
      prepaidInfo: PrepaidInfoModel(
        balance:
            '${AppConstant.currencyUnit}${univCoopCard.prepaidInfo.balance}',
        point: '${univCoopCard.prepaidInfo.point}${AppConstant.pointUnit}',
        transactions: univCoopCard.prepaidInfo.transactions
            .map((e) => PrepaidTransactionModel.from(e))
            .toList(),
      ),
      mealInfo: MealInfoModel(
        balance:
            '${AppConstant.currencyUnit}${univCoopCard.mealPrepaidInfo.balance}',
        isMealUser: univCoopCard.mealPrepaidInfo.isMealUser,
      ),
    );
  }
}
