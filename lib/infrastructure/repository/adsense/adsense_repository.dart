import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/domain/entity/adsense/adsense_banner.dart';
import 'package:kadai_info_flutter/domain/repository/%20adsense/i_adsense_repository.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/gas/i_gas_datasource.dart';

class AdsenseRepository implements IAdsenseRepository {
  AdsenseRepository({
    required this.gas,
  });

  final IGasDatasource gas;

  @override
  Future<Result<AdsenseBanner>> getAdsenseBanner() async {
    try {
      final data = await gas.adsenseBanner();
      final entity = AdsenseBanner(
        imageUrl: data.imageUrl,
        link: data.link,
      );
      return Result.success(entity);
    } catch (e) {
      rethrow;
    }
  }
}
