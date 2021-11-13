import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/domain/entity/univ_coop_card/univ_coop_card.dart';
import 'package:nfc_manager/nfc_manager.dart';

abstract class IUnivCoopRepository {
  /// 大学生協カードの取得
  Future<Result<UnivCoopCard>> getUnivCoopCard(NfcTag tag);
}
