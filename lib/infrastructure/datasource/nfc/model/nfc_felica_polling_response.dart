import 'dart:typed_data';

/// Polling Response
class NfcFeliCaPollingResponse {
  /// レスポンスコード
  final Uint8List responseCode;

  /// 製造ID
  final Uint8List idm;

  /// 製造パラメータ
  final Uint8List pmm;

  /// リクエストデータ
  final Uint8List requestData;

  NfcFeliCaPollingResponse({
    required this.idm,
    required this.responseCode,
    required this.requestData,
    required this.pmm,
  });

  factory NfcFeliCaPollingResponse.from(Uint8List block) {
    return NfcFeliCaPollingResponse(
      idm: block.sublist(2, 10),
      responseCode: block.sublist(1),
      requestData: block.sublist(18, 20),
      pmm: block.sublist(10, 18),
    );
  }
}
