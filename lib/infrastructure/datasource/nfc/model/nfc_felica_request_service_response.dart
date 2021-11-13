import 'dart:typed_data';

/// Request Service Response
class NfcFeliCaRequestServiceResponse {
  final bool statusFlag1;
  final bool statusFlag2;

  NfcFeliCaRequestServiceResponse({
    required this.statusFlag2,
    required this.statusFlag1,
  });

  factory NfcFeliCaRequestServiceResponse.from(Uint8List data) {
    return NfcFeliCaRequestServiceResponse(
      statusFlag2: data[11] == 0,
      statusFlag1: data[12] == 0,
    );
  }
}
