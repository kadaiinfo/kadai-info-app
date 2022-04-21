// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/application/univ_coop/univ_coop_application.dart';
import 'package:kadai_info_flutter/presentation/balance/model/univ_coop_card_model.dart';
import 'package:kadai_info_flutter/presentation/balance/widget/univ_coop_card_info/univ_coop_card_info_state.dart';

class UnivCoopCardInfoController
    extends StateNotifier<AsyncValue<UnivCoopCardInfoState>> {
  UnivCoopCardInfoController({
    required UnivCoopApplication app,
  })  : _app = app,
        super(const AsyncLoading());

  final UnivCoopApplication _app;

  /// ICカード情報を更新する
  void updateUnivCoopCard(UnivCoopCardModel univCoopCard) {
    state = AsyncData(
      UnivCoopCardInfoState(univCoopCard: univCoopCard),
    );
  }

  /// エラーセット
  void setError(error) {
    state = AsyncError(error);
  }
}
