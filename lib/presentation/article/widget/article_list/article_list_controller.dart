import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/interactor/article/article_interactor.dart';

import 'article_list_state.dart';

class ArticleListController
    extends StateNotifier<AsyncValue<ArticleListState>> {
  ArticleListController(
    AsyncValue<ArticleListState> state,
    this._interactor,
  ) : super(const AsyncLoading()) {
    _fetch();
  }

  final ArticleInteractor _interactor;

  /// 同期
  Future<void> _fetch() async {
    await _interactor.getArticleList();
  }

  /// 再読み込み
  Future<void> reload() async {}

  /// 読み込み
  Future<void> load() async {}
}
