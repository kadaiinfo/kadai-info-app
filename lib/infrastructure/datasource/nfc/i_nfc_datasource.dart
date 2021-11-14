import 'package:kadai_info_flutter/infrastructure/datasource/nfc/model/nfc_univ_coop_info.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/nfc/model/nfc_univ_coop_prepaid_balance.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/nfc/model/nfc_univ_coop_prepaid_transaction.dart';
import 'package:nfc_manager/nfc_manager.dart';

abstract class INfcDatasource {
  /// 大学生協の基本情報取得
  Future<NfcUnivCoopInfo> univCoopInfo(NfcTag tag);

  /// 大学生協のプリペイド利用履歴の取得
  Future<List<NfcUnivCoopPrepaidTransaction>> univCoopPrepaidTransactions(
    NfcTag tag, {
    int count = 10,
  });

  /// 大学生協のプリペイド残高情報の取得
  Future<NfcUnivCoopPrepaidBalance> univCoopPrepaidBalance(NfcTag tag);
}
