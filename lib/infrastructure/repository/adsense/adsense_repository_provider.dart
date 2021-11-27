import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/domain/repository/%20adsense/i_adsense_repository.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/gas/gas_datasource_provider.dart';
import 'package:kadai_info_flutter/infrastructure/repository/adsense/adsense_repository.dart';

final adsenseRepositoryProvider = Provider<IAdsenseRepository>(
  (ref) => AdsenseRepository(
    gas: ref.read(gasDatasourceProvider),
  ),
);
