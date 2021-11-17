import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/domain/repository/circle/i_circle_repository.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/wordpress_datasource_provider.dart';
import 'package:kadai_info_flutter/infrastructure/repository/circle/circle_repository.dart';

final circleRepositoryProvider = Provider<ICircleRepository>(
  (ref) => CircleRepository(
    wp: ref.read(wordpressDatasourceProvider),
  ),
);
