import 'package:kadai_info_flutter/infrastructure/datasource/gas/model/gas_adsense_banner.dart';

abstract class IGasDatasource {
  /// バナー広告
  Future<GASAdsenseBanner> adsenseBanner();
}
