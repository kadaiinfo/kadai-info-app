// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/application/adsense/adsense_application.dart';
import 'package:kadai_info_flutter/infrastructure/repository/adsense/adsense_repository_provider.dart';

final adsenseApplicationProvider = Provider<AdsenseApplication>(
  (ref) => AdsenseApplication(
    repository: ref.read(adsenseRepositoryProvider),
  ),
);
