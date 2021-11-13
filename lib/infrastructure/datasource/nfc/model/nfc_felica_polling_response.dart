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

  factory NfcFeliCaPollingResponse.from(Uint8List data) {
    return NfcFeliCaPollingResponse(
      idm: data.sublist(2, 10),
      responseCode: data.sublist(1, 2),
      requestData: data.sublist(18, 20),
      pmm: data.sublist(10, 18),
    );
  }
}
