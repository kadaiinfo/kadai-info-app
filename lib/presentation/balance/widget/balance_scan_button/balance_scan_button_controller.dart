import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/application/univ_coop/univ_coop_application.dart';
import 'package:kadai_info_flutter/presentation/balance/widget/balance_scan_button/balance_scan_button_state.dart';
import 'package:nfc_manager/nfc_manager.dart';

class BalanceScanButtonController
    extends StateNotifier<BalanceScanButtonState> {
  BalanceScanButtonController({
    required UnivCoopApplication app,
  })  : _app = app,
        super(BalanceScanButtonState());

  final UnivCoopApplication _app;

  /// プリペイド・ミール残高の取得
  Future<void> scanBalance() async {
    state = BalanceScanButtonState(isRunning: true);
    if (await NfcManager.instance.isAvailable()) {
      await NfcManager.instance.startSession(
        onDiscovered: (tag) async {
          try {
            final result = await _app.getUnivCoopCard(tag);
            await NfcManager.instance.stopSession();
          } catch (e) {
            await NfcManager.instance.stopSession();
          }
        },
      );
    }
    await Future.delayed(const Duration(seconds: 1)); // TODO: 実際の読取り処理
    state = BalanceScanButtonState(isRunning: false);
  }
}
