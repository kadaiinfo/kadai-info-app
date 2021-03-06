// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/domain/repository/binanbijo/i_binanbijo_repository.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/firestore/firestore_datasource_provider.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/micro_cms/micro_cms_datasource_provider.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/nfc/nfc_datasource_provider.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/realtime_database/realtime_database_datasource_provider.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/sqflite_datasource_provider.dart';
import 'package:kadai_info_flutter/infrastructure/repository/binanbijo/binanbijo_repository.dart';

final binanbijoRepositoryProvider = Provider<IBinanbijoRepository>((ref) =>
    BinanbijoRepository(
        mc: ref.read(microCmsDatasourceProvider),
        sqf: ref.read(sqfliteDatasourceProvider),
        nfc: ref.read(nfcDatasourceProvider),
        firestore: ref.read(firestoreDatasourceProvider),
        rtdb: ref.read(realtimeDatabaseDatasourceProvider)));
