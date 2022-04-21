// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/domain/repository/univ_coop/i_univ_coop_repository.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/nfc/nfc_datasource_provider.dart';
import 'package:kadai_info_flutter/infrastructure/repository/univ_coop/univ_coop_repository.dart';

final univCoopRepositoryProvider = Provider<IUnivCoopRepository>(
  (ref) => UnivCoopRepository(
    nfc: ref.read(nfcDatasourceProvider),
  ),
);
