import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/sqflite_datasource_provider.dart';

final sqfliteInitializer = FutureProvider(
    (ref) async => await ref.watch(sqfliteDatasourceProvider).init());
