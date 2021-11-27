import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/application/adsense/adsense_application.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_adsense_banner/timetable_adsense_banner_state.dart';

class TimetableAdsenseBannerController
    extends StateNotifier<AsyncValue<TimetableAdsenseBannerState>> {
  TimetableAdsenseBannerController({
    required this.app,
  }) : super(const AsyncLoading()) {
    _fetch();
  }

  final AdsenseApplication app;

  /// 同期
  Future<void> _fetch() async {
    final result = await app.getAdsenseBanner();
    result.when(
      success: (data) {
        final _banner = TimetableAdsenseBannerState.from(data);
        state = AsyncData(_banner);
      },
      failure: (error) {
        state = AsyncError(error);
      },
    );
  }
}
