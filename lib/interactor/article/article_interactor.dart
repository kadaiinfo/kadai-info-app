import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/domain/repository/i_article_repository.dart';

import 'article_interactor_state.dart';

class ArticleInteractor
    extends StateNotifier<AsyncValue<ArticleInteractorState>> {
  ArticleInteractor({required IArticleRepository repository})
      : _repository = repository,
        super(const AsyncLoading());

  final IArticleRepository _repository;

  /// 記事一覧の取得
  Future<Exception?> getArticleList() async {
    await _repository.getArticlePage(page: 1, per: 20);
  }

  /// お気に入り記事一覧の取得
  Future<Exception?> getFavoriteArticleList() async {}
}
