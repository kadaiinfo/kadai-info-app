// Project imports:
import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/domain/entity/adsense/adsense_banner.dart';

abstract class IAdsenseRepository {
  /// 広告バナーの取得
  Future<Result<AdsenseBanner>> getAdsenseBanner();
}
