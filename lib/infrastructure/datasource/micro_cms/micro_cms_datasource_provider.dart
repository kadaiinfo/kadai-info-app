// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/infrastructure/datasource/micro_cms/i_micro_cms_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/micro_cms/micro_cms_datasource.dart';

final microCmsDatasourceProvider =
    Provider<IMicroCmsDatasource>((ref) => MicroCmsDatasource());
