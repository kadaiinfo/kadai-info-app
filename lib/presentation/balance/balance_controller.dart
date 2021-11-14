import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/balance/balance_state.dart';
import 'package:nfc_manager/nfc_manager.dart';

class BalanceController extends StateNotifier<AsyncValue<BalanceState>> {
  BalanceController() : super(const AsyncLoading()) {
    init();
  }

  /// 初期処理
  Future<void> init() async {
    await checkAvailable();
  }

  /// NFCに対応しているかチェックする
  Future<void> checkAvailable() async {
    final isAvailable = await NfcManager.instance.isAvailable();
    state = AsyncData(BalanceState(isAvailable: isAvailable));
  }
}
