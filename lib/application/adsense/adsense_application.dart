// Project imports:
import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/domain/entity/adsense/adsense_banner.dart';
import 'package:kadai_info_flutter/domain/repository/%20adsense/i_adsense_repository.dart';

class AdsenseApplication {
  AdsenseApplication({
    required this.repository,
  });

  final IAdsenseRepository repository;

  /// 広告バナーの取得
  Future<Result<AdsenseBanner>> getAdsenseBanner() async {
    final result = await repository.getAdsenseBanner();
    return result;
  }
}
