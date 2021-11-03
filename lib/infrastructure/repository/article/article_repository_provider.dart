import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/domain/repository/article/i_article_repository.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/sqflite_datasource_provider.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/wordpress_datasource_provider.dart';
import 'package:kadai_info_flutter/infrastructure/repository/article/article_repository.dart';

final articleRepositoryProvider = Provider<IArticleRepository>(
  (ref) => ArticleRepository(
    wp: ref.read(wordpressDatasourceProvider),
    sqf: ref.read(sqfliteDatasourceProvider),
  ),
);
