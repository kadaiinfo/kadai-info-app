import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/gas/gas_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/gas/i_gas_datasource.dart';

final gasDatasourceProvider = Provider<IGasDatasource>(
  (ref) => GasDatasource(),
);
