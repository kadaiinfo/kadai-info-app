// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/application/article/article_application.dart';
import 'package:kadai_info_flutter/infrastructure/repository/article/article_repository_provider.dart';

final articleApplicationProvider = Provider(
  (ref) => ArticleApplication(
    ref.read(articleRepositoryProvider),
  ),
);
