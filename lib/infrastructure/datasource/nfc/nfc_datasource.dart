import 'dart:io';
import 'dart:typed_data';

import 'package:kadai_info_flutter/infrastructure/datasource/nfc/i_nfc_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/nfc/model/nfc_felica_polling_response.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/nfc/model/nfc_felica_request_service_response.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/nfc/model/nfc_univ_coop_info.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/nfc/model/nfc_univ_coop_prepaid_balance.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/nfc/model/nfc_univ_coop_prepaid_transaction.dart';
import 'package:nfc_manager/nfc_manager.dart';
import 'package:nfc_manager/platform_tags.dart';

class NfcDatasource implements INfcDatasource {
  @override
  Future<NfcUnivCoopInfo> univCoopInfo(NfcTag tag) async {
    // TODO: implement univCoopInfo
    throw UnimplementedError();
  }

  @override
  Future<NfcUnivCoopPrepaidBalance> univCoopPrepaidBalance(NfcTag tag) async {
    final systemCode = [0xFE, 0x00];
    final serviceCode = [0x50, 0xD7];
    final pollingRes = await _polling(tag: tag, systemCode: systemCode);
    final requestServiceRes = await _requestService(
      idm: pollingRes.idm,
      serviceCode: serviceCode,
      tag: tag,
    );
    if (requestServiceRes.statusFlag1 && requestServiceRes.statusFlag2) {
      final readWithoutEncryptionRes = await _readWithoutEncryption(
        tag: tag,
        idm: pollingRes.idm,
        serviceCode: serviceCode,
        blockCount: 1,
      );
      return NfcUnivCoopPrepaidBalance.from(readWithoutEncryptionRes);
    }
    final readWithoutEncryptionRes = await _readWithoutEncryption(
      tag: tag,
      idm: pollingRes.idm,
      serviceCode: serviceCode,
      blockCount: 1,
    );
    return NfcUnivCoopPrepaidBalance.from(readWithoutEncryptionRes);
  }

  @override
  Future<List<NfcUnivCoopPrepaidTransaction>> univCoopPrepaidTransactions(
      NfcTag tag) {
    // TODO: implement univCoopPrepaidTransactions
    throw UnimplementedError();
  }

  /// Polling
  Future<NfcFeliCaPollingResponse> _polling({
    required NfcTag tag,
    required List<int> systemCode,
  }) async {
    final List<int> packet = [];
    if (Platform.isAndroid) {
      packet.add(0x06);
    }
    packet.add(0x00); // コマンドコード
    packet.add(systemCode[0]);
    packet.add(systemCode[1]);
    packet.add(0x01); // リクエストコード
    packet.add(0x0F);

    final command = Uint8List.fromList(packet);
    if (NfcF.from(tag) != null) {
      final nfcF = NfcF.from(tag)!;
      final block = await nfcF.transceive(data: command);
      return NfcFeliCaPollingResponse.from(block);
    } else if (FeliCa.from(tag) != null) {
      final feliCa = FeliCa.from(tag)!;
      final block = await feliCa.sendFeliCaCommand(command);
      return NfcFeliCaPollingResponse.from(block);
    }
    throw Exception();
  }

  /// RequestService
  Future<NfcFeliCaRequestServiceResponse> _requestService({
    required Uint8List idm,
    required List<int> serviceCode,
    required NfcTag tag,
  }) async {
    final Uint8List nodeCodeList = Uint8List.fromList(serviceCode);
    final List<int> packet = [];
    if (Platform.isAndroid) {
      packet.add(0x06);
    }
    packet.add(0x02);
    packet.addAll(idm);
    packet.add(nodeCodeList.elementSizeInBytes);
    packet.add(serviceCode[1]);
    packet.add(serviceCode[0]);

    final command = Uint8List.fromList(packet);
    if (NfcF.from(tag) != null) {
      final nfcF = NfcF.from(tag)!;
      final block = await nfcF.transceive(data: command);
      return NfcFeliCaRequestServiceResponse.from(block);
    } else if (FeliCa.from(tag) != null) {
      final feliCa = FeliCa.from(tag)!;
      final block = await feliCa.sendFeliCaCommand(command);
      return NfcFeliCaRequestServiceResponse.from(block);
    }

    throw Exception();
  }

  /// ReadWithoutEncryption
  Future<Uint8List> _readWithoutEncryption({
    required NfcTag tag,
    required Uint8List idm,
    required List<int> serviceCode,
    required int blockCount,
  }) async {
    final List<int> packet = [];
    if (Platform.isAndroid) {
      packet.add(0);
    }
    packet.add(0x06);
    packet.addAll(idm);
    packet.add(serviceCode.length ~/ 2);

    packet.add(serviceCode[1]);
    packet.add(serviceCode[0]);
    packet.add(blockCount);

    for (int i = 0; i < blockCount; i++) {
      packet.add(0x80);
      packet.add(i);
    }
    if (Platform.isAndroid) {
      packet[0] = packet.length;
    }

    final command = Uint8List.fromList(packet);
    if (NfcF.from(tag) != null) {
      final nfcF = NfcF.from(tag)!;
      final data = await nfcF.transceive(data: command);
      return data;
    } else if (FeliCa.from(tag) != null) {
      final feliCa = FeliCa.from(tag)!;
      final data = await feliCa.sendFeliCaCommand(command);
      return data;
    }
    throw Exception();
  }
}
