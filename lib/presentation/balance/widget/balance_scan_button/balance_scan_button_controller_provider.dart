import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/application/univ_coop/univ_coop_application_provider.dart';
import 'package:kadai_info_flutter/presentation/balance/widget/balance_scan_button/balance_scan_button_controller.dart';
import 'package:kadai_info_flutter/presentation/balance/widget/balance_scan_button/balance_scan_button_state.dart';

final balanceScanButtonControllerProvider =
    StateNotifierProvider<BalanceScanButtonController, BalanceScanButtonState>(
  (ref) => BalanceScanButtonController(
    app: ref.read(univCoopApplicationProvider),
  ),
);
