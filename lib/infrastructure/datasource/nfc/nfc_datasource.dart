// Dart imports:
import 'dart:io';
import 'dart:typed_data';

// Package imports:
import 'package:nfc_manager/nfc_manager.dart';
import 'package:nfc_manager/platform_tags.dart';

// Project imports:
import 'package:kadai_info_flutter/infrastructure/datasource/nfc/i_nfc_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/nfc/model/nfc_felica_polling_response.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/nfc/model/nfc_felica_read_without_encryption_response.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/nfc/model/nfc_felica_type.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/nfc/model/nfc_univ_coop_info.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/nfc/model/nfc_univ_coop_prepaid_balance.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/nfc/model/nfc_univ_coop_prepaid_transaction.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/nfc/model/nfc_univ_user_info.dart';

class NfcDatasource implements INfcDatasource {
  @override
  Future<NfcUnivCoopInfo> univCoopInfo(NfcTag tag) async {
    try {
      final serviceCode = [0x50, 0xCB];
      final pollingResponse = await _polling(tag, type: NfcFeliCaType.univ);
      final readWithoutEncryptionRes = await _readWithoutEncryption(
        tag: tag,
        idm: pollingResponse.idm,
        serviceCode: serviceCode,
        blockCount: 6,
      );
      await _resetMode(tag: tag, idm: pollingResponse.idm);
      return NfcUnivCoopInfo.from(readWithoutEncryptionRes.blockData);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<NfcUnivCoopPrepaidBalance> univCoopPrepaidBalance(NfcTag tag) async {
    try {
      final serviceCode = [0x50, 0xD7];
      final pollingResponse = await _polling(tag, type: NfcFeliCaType.univ);
      final readWithoutEncryptionRes = await _readWithoutEncryption(
        tag: tag,
        idm: pollingResponse.idm,
        serviceCode: serviceCode,
        blockCount: 1,
      );
      final targetBlockData = readWithoutEncryptionRes.blockData.first;
      await _resetMode(tag: tag, idm: pollingResponse.idm);
      return NfcUnivCoopPrepaidBalance.from(targetBlockData);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<NfcUnivCoopPrepaidTransaction>> univCoopPrepaidTransactions(
    NfcTag tag, {
    int count = 10,
  }) async {
    try {
      final serviceCode = [0x50, 0xCF];
      final pollingResponse = await _polling(tag, type: NfcFeliCaType.univ);
      final readWithoutEncryptionRes = await _readWithoutEncryption(
        tag: tag,
        idm: pollingResponse.idm,
        serviceCode: serviceCode,
        blockCount: count,
      );
      await _resetMode(tag: tag, idm: pollingResponse.idm);
      return readWithoutEncryptionRes.blockData
          .map((e) => NfcUnivCoopPrepaidTransaction.from(e))
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  /// Polling
  Future<NfcFeliCaPollingResponse> _polling(
    NfcTag tag, {
    required NfcFeliCaType type,
  }) async {
    final List<int> packet = [];
    if (Platform.isAndroid) {
      packet.add(0x06);
    }
    packet.add(0x00); // コマンドコード
    packet.add(type.systemCode[0]);
    packet.add(type.systemCode[1]);
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
  // Future<NfcFeliCaRequestServiceResponse> _requestService({
  //   required Uint8List idm,
  //   required List<int> serviceCode,
  //   required NfcTag tag,
  // }) async {
  //   final Uint8List nodeCodeList = Uint8List.fromList(serviceCode);
  //   final List<int> packet = [];
  //   if (Platform.isAndroid) {
  //     packet.add(0x06);
  //   }
  //   packet.add(0x02);
  //   packet.addAll(idm);
  //   packet.add(nodeCodeList.elementSizeInBytes);
  //   packet.add(serviceCode[1]);
  //   packet.add(serviceCode[0]);

  //   final command = Uint8List.fromList(packet);
  //   if (NfcF.from(tag) != null) {
  //     final nfcF = NfcF.from(tag)!;
  //     final block = await nfcF.transceive(data: command);
  //     return NfcFeliCaRequestServiceResponse.from(block);
  //   } else if (FeliCa.from(tag) != null) {
  //     final feliCa = FeliCa.from(tag)!;
  //     final block = await feliCa.sendFeliCaCommand(command);
  //     return NfcFeliCaRequestServiceResponse.from(block);
  //   }
  //   throw Exception();
  // }

  /// ReadWithoutEncryption
  Future<NfcFeliCaReadWithoutEncryptionResponse> _readWithoutEncryption({
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
      return NfcFeliCaReadWithoutEncryptionResponse.from(data);
    } else if (FeliCa.from(tag) != null) {
      final feliCa = FeliCa.from(tag)!;
      final data = await feliCa.sendFeliCaCommand(command);
      return NfcFeliCaReadWithoutEncryptionResponse.from(data);
    }
    throw Exception();
  }

  /// ResetMode
  Future<void> _resetMode({
    required NfcTag tag,
    required Uint8List idm,
  }) async {
    final List<int> packet = [];

    if (Platform.isAndroid) {
      packet.add(5);
    }
    packet.add(0x3E);
    packet.addAll(idm);
    packet.add(0x00);
    packet.add(0x00);

    final command = Uint8List.fromList(packet);

    if (NfcF.from(tag) != null) {
      final nfcF = NfcF.from(tag)!;
      await nfcF.transceive(data: command);
    } else if (FeliCa.from(tag) != null) {
      final feliCa = FeliCa.from(tag)!;
      await feliCa.sendFeliCaCommand(command);
    }
  }

  @override
  Future<NfcUnivUserInfo> univUserInfo(NfcTag tag) async {
    try {
      final serviceCode = [0x01, 0x0B];
      final pollingResponse = await _polling(tag, type: NfcFeliCaType.univUser);
      final readWithoutEncryptionRes = await _readWithoutEncryption(
        tag: tag,
        idm: pollingResponse.idm,
        serviceCode: serviceCode,
        blockCount: 4,
      );
      await _resetMode(tag: tag, idm: pollingResponse.idm);
      return NfcUnivUserInfo.from(readWithoutEncryptionRes.blockData);
    } catch (e) {
      rethrow;
    }
  }
}
