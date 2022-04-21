// Dart imports:
import 'dart:typed_data';

// Project imports:
import 'package:kadai_info_flutter/core/extension/uint8list_extension.dart';
import 'package:kadai_info_flutter/core/util/datetime_util.dart';
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

  factory NfcUnivCoopInfo.from(List<Uint8List> blockData) {
    final idData = blockData[0].sublist(0, 6);
    final memberTypeData = blockData[0][6];
    final isMealUserData = blockData[1][0];
    final yearData = blockData[1].sublist(2, 3);
    final monthData = blockData[1].sublist(3, 4);
    final dayData = blockData[1].sublist(4, 5);
    final amountData = blockData[1].sublist(5, 8);
    final pointData = blockData[2].sublist(0, 4);
    final updatedAt = DateTime(
      yearData.toNumberFromHex + 2000,
      monthData.toNumberFromHex,
      dayData.toNumberFromHex,
    );
    return NfcUnivCoopInfo(
      amount: amountData.toNumberFromHex,
      id: '${idData.toNumberFromHex}',
      memberType: memberTypeData.toMemberShip,
      updatedAt: updatedAt,
      point: pointData.toNumberFromBigEndian,
      isMealUser:
          isMealUserData == 1 && DateTimeUtil.isThisSchoolYear(updatedAt),
    );
  }
}
