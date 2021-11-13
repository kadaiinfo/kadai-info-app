import 'package:kadai_info_flutter/infrastructure/datasource/nfc/model/nfc_univ_coop_member_type.dart';

/// 大学生協の基本情報
class NfcUnivCoopInfo {
  /// 組合員No / 電子マネー管理番号
  final String id;

  /// メンバー区分
  final NfcUnivCoopMemberType memberType;

  /// ミールカード利用者であるか
  final bool isMealUser;

  /// 最終更新日
  final DateTime updatedAt;

  /// 最終利用額
  final int amount;

  /// ポイント
  final int point;

  NfcUnivCoopInfo({
    required this.amount,
    required this.id,
    required this.memberType,
    required this.updatedAt,
    required this.point,
    required this.isMealUser,
  });
}
