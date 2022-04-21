// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/presentation/balance/balance_controller.dart';
import 'package:kadai_info_flutter/presentation/balance/balance_state.dart';

final balanceControllerProvider =
    StateNotifierProvider<BalanceController, AsyncValue<BalanceState>>(
  (ref) => BalanceController(),
);
