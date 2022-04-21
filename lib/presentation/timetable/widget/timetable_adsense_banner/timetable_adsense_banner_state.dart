// Project imports:
import 'package:kadai_info_flutter/domain/entity/adsense/adsense_banner.dart';

class TimetableAdsenseBannerState {
  /// リンク
  final String link;

  /// 画像URL
  final String imageUrl;

  TimetableAdsenseBannerState({
    required this.link,
    required this.imageUrl,
  });

  factory TimetableAdsenseBannerState.from(AdsenseBanner banner) {
    return TimetableAdsenseBannerState(
      link: banner.link,
      imageUrl: banner.imageUrl,
    );
  }
}
