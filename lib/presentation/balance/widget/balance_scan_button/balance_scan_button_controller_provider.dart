import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/balance/widget/balance_scan_button/balance_scan_button_controller.dart';
import 'package:kadai_info_flutter/presentation/balance/widget/balance_scan_button/balance_scan_button_state.dart';

final balanceScanButtonControllerProvider =
    StateNotifierProvider<BalanceScanButtonController, BalanceScanButtonState>(
  (ref) => BalanceScanButtonController(),
);
