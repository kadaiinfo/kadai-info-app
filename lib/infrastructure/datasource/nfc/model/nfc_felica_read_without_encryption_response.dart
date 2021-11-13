import 'dart:typed_data';

/// Read Without Encryption Response
class NfcFeliCaReadWithoutEncryptionResponse {
  /// レスポンスコード
  final Uint8List responseCode;

  /// IDm
  final Uint8List idm;

  /// ステータスフラグ1
  /// TODO: enum等で定義
  final bool statusFlag1;

  /// ステータスフラグ2
  /// TODO: enum等で定義
  final bool statusFlag2;

  /// ブロック数
  final int blockCount;

  /// ブロックデータ
  final List<Uint8List> blockData;

  NfcFeliCaReadWithoutEncryptionResponse({
    required this.statusFlag2,
    required this.statusFlag1,
    required this.idm,
    required this.responseCode,
    required this.blockCount,
    required this.blockData,
  });

  factory NfcFeliCaReadWithoutEncryptionResponse.from(Uint8List data) {
    final blockData = data.sublist(13);
    final blockSize = 16;
    final List<Uint8List> blockList = [];
    for (int i = 0; i < blockData.length; i += 16) {
      final List<int> block = blockData.sublist(i, i + 16);
      blockList.add(Uint8List.fromList(block));
    }
    return NfcFeliCaReadWithoutEncryptionResponse(
      statusFlag2: data[10] == 0,
      statusFlag1: data[10] == 0,
      idm: data.sublist(2, 10),
      responseCode: data.sublist(1, 1),
      blockCount: data[12],
      blockData: blockData,
    );
  }
}
