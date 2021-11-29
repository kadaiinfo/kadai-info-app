import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/application/univ_coop/univ_coop_application.dart';
import 'package:kadai_info_flutter/presentation/balance/model/univ_coop_card_model.dart';
import 'package:kadai_info_flutter/presentation/balance/widget/balance_scan_button/balance_scan_button_state.dart';
import 'package:kadai_info_flutter/presentation/balance/widget/univ_coop_card_info/univ_coop_card_info_controller_provider.dart';
import 'package:nfc_manager/nfc_manager.dart';

class BalanceScanButtonController
    extends StateNotifier<BalanceScanButtonState> {
  BalanceScanButtonController({
    required UnivCoopApplication app,
    required Reader reader,
  })  : _app = app,
        _reader = reader,
        super(BalanceScanButtonState());

  final UnivCoopApplication _app;
  final Reader _reader;

  /// ICカードを読み取る
  Future<void> scanICCard() async {
    state = BalanceScanButtonState(isRunning: true);
    await NfcManager.instance.stopSession();
    await NfcManager.instance.startSession(
      onDiscovered: (tag) async {
        try {
          final result = await _app.getUnivCoopCard(tag);
          await NfcManager.instance.stopSession();
          state = BalanceScanButtonState(isRunning: false);
          final controller =
              _reader(univCoopCardInfoControllerProvider.notifier);
          result.when(
            success: (data) {
              final univCoopCard = UnivCoopCardModel.from(data);
              controller.updateUnivCoopCard(univCoopCard);
            },
            failure: (error) {
              controller.setError(error);
            },
          );
        } catch (e) {
          await NfcManager.instance.stopSession();
          state = BalanceScanButtonState(isRunning: false);
        }
      },
    );
  }
}
