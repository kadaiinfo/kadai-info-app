// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/i_sqflite_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/sqflite_datasource.dart';

final sqfliteDatasourceProvider = Provider<ISqfliteDatasource>(
  (ref) => SqfliteDatasource(),
);
