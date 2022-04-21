// Dart imports:
import 'dart:convert';
import 'dart:typed_data';

/// 大学生協の残額情報
class NfcUnivUserInfo {
  /// 学籍番号
  final int studentNumber;

  // 謎2
  // final int second;

  // 謎3
  // final int third;

  /// 有効期限
  final DateTime expiryAt;

  NfcUnivUserInfo({
    required this.studentNumber,
    required this.expiryAt,
    // required this.second,
    // required this.third
  });

  factory NfcUnivUserInfo.from(List<Uint8List> blockData) {
    final studentNumberData = blockData[0].sublist(2, 12);
    // final secondData = blockData[1].sublist(0, 16);
    // final thirdData = blockData[2].sublist(0, 16);
    final expiryAtData = blockData[3].sublist(0, 8);
    final expiryAtAscii = ascii.decode(expiryAtData);
    final expiryAtISO8601 = '${expiryAtAscii.substring(0, 4)}-${expiryAtAscii.substring(4, 6)}-${expiryAtAscii.substring(6, 8)}';
    return NfcUnivUserInfo(
      studentNumber: int.parse(ascii.decode(studentNumberData)),
      // second: secondData.toNumberFromLittleEndian,
      // third: thirdData.toNumberFromHex,
      expiryAt: DateTime.parse(expiryAtISO8601)
    );
  }
}
