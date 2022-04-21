// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/application/adsense/adsense_application_provider.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_adsense_banner/timetable_adsense_banner_controller.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_adsense_banner/timetable_adsense_banner_state.dart';

final timetableAdsenseBannerControllerProvider = StateNotifierProvider<
    TimetableAdsenseBannerController, AsyncValue<TimetableAdsenseBannerState>>(
  (ref) => TimetableAdsenseBannerController(
    app: ref.read(adsenseApplicationProvider),
  ),
);
