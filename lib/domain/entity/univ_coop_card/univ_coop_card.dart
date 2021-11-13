import 'package:kadai_info_flutter/domain/entity/univ_coop_card/univ_coop_meal_prepaid_info.dart';
import 'package:kadai_info_flutter/domain/entity/univ_coop_card/univ_coop_prepaid_info.dart';

/// 大学生協カード
class UnivCoopCard {
  /// ID
  final String id;

  /// プリペイド情報
  final UnivCoopPrepaidInfo prepaidInfo;

  /// ミール情報
  final UnivCoopMealPrepaidInfo mealPrepaidInfo;

  UnivCoopCard({
    required this.mealPrepaidInfo,
    required this.prepaidInfo,
    required this.id,
  });
}
