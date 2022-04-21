// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/application/univ_coop/univ_coop_application_provider.dart';
import 'package:kadai_info_flutter/presentation/balance/widget/univ_coop_card_info/univ_coop_card_info_controller.dart';
import 'package:kadai_info_flutter/presentation/balance/widget/univ_coop_card_info/univ_coop_card_info_state.dart';

final univCoopCardInfoControllerProvider = StateNotifierProvider<
    UnivCoopCardInfoController, AsyncValue<UnivCoopCardInfoState>>(
  (ref) => UnivCoopCardInfoController(
    app: ref.read(univCoopApplicationProvider),
  ),
);
