// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/application/univ_coop/univ_coop_application.dart';
import 'package:kadai_info_flutter/infrastructure/repository/univ_coop/univ_coop_repository_provider.dart';

final univCoopApplicationProvider = Provider(
  (ref) => UnivCoopApplication(
    repository: ref.read(univCoopRepositoryProvider),
  ),
);
