import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/infrastructure/repository/article/article_repository_provider.dart';
import 'package:kadai_info_flutter/interactor/article/article_interactor.dart';
import 'package:kadai_info_flutter/interactor/article/article_interactor_state.dart';

final articleInteractorProvider = StateNotifierProvider<ArticleInteractor,
    AsyncValue<ArticleInteractorState>>(
  (ref) => ArticleInteractor(
    repository: ref.read(articleRepositoryProvider),
  ),
);
