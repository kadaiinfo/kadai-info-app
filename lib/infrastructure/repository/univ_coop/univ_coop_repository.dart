import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/domain/entity/univ_coop_card/univ_coop_card.dart';
import 'package:kadai_info_flutter/domain/entity/univ_coop_card/univ_coop_meal_prepaid_info.dart';
import 'package:kadai_info_flutter/domain/entity/univ_coop_card/univ_coop_prepaid_info.dart';
import 'package:kadai_info_flutter/domain/entity/univ_coop_card/univ_coop_prepaid_transaction.dart';
import 'package:kadai_info_flutter/domain/repository/univ_coop/i_univ_coop_repository.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/nfc/i_nfc_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/nfc/model/nfc_univ_coop_prepaid_usage_type.dart';
import 'package:nfc_manager/nfc_manager.dart';

class UnivCoopRepository implements IUnivCoopRepository {
  UnivCoopRepository({required INfcDatasource nfc}) : _nfc = nfc;
  final INfcDatasource _nfc;
  @override
  Future<Result<UnivCoopCard>> getUnivCoopCard(NfcTag tag) async {
    try {
      final prepaidBalance = await _nfc.univCoopPrepaidBalance(tag);
      final info = await _nfc.univCoopInfo(tag);
      final transactions = await _nfc.univCoopPrepaidTransactions(tag);
      final card = UnivCoopCard(
        mealPrepaidInfo:
            UnivCoopMealPrepaidInfo(balance: 1300 - info.point, limit: 1300),
        prepaidInfo: UnivCoopPrepaidInfo(
          balance: prepaidBalance.balance,
          transactions: transactions
              .map(
                (e) => UnivCoopPrepaidTransaction(
                  amount: e.amount,
                  isCharge: e.type == NfcUnivCoopPrepaidUsageType.charge,
                  tradedAt: e.createdAt,
                ),
              )
              .toList(),
        ),
        id: info.id,
      );
      return Result.success(card);
    } catch (e) {
      return Result.failure(Exception(e));
    }
  }
}
