// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/infrastructure/datasource/realtime_database/i_reaitime_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/realtime_database/realtime_database_datasource.dart';

final realtimeDatabaseDatasourceProvider =
    Provider<IRealtimeDatabaseDatasource>(
        (ref) => RealtimeDatabaseDatasource());
