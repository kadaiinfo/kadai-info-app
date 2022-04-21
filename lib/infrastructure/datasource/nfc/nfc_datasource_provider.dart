// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/infrastructure/datasource/nfc/i_nfc_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/nfc/nfc_datasource.dart';

final nfcDatasourceProvider = Provider<INfcDatasource>(
  (ref) => NfcDatasource(),
);
