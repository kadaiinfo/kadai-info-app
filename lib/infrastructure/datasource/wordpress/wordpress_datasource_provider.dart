// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/i_wordpress_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/wordpress_datasource.dart';

final wordpressDatasourceProvider = Provider<IWordpressDatasource>(
  (ref) => WordpressDatasource(),
);
