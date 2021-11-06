import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/application/article/article_application.dart';
import 'package:kadai_info_flutter/presentation/article/model/article_list_type.dart';
import 'package:kadai_info_flutter/presentation/article/model/article_model.dart';

import 'article_list_state.dart';

class ArticleListController
    extends StateNotifier<AsyncValue<ArticleListState>> {
  ArticleListController(
    this._app, {
    required this.type,
  }) : super(const AsyncLoading()) {
    _fetch();
  }

  final ArticleApplication _app;

  static const _perPage = 20;
  int _page = 1;
  final ArticleListType type;

  /// 同期
  Future<void> _fetch() async {
    final category = type.toCategory;
    final result = type == ArticleListType.favorite
        ? await _app.getFavoriteArticleList(page: _page, perPage: _perPage)
        : await _app.getArticleList(
            page: _page,
            perPage: _perPage,
            categories: category == null ? [] : [category],
          );
    result.when(
      success: (data) {
        final asyncData = state.asData;
        final List<ArticleModel> allArticles = [];
        if (asyncData != null && _page != 1) {
          final oldArticles = asyncData.value.articles;
          allArticles.addAll(oldArticles);
        }
        final newArticles = ArticleListState.from(data).articles;
        allArticles.addAll(newArticles);
        if (data.hasNext) {
          _page++;
        }
        if (asyncData != null) {
          state = AsyncData(
              asyncData.value.copyWith(articles: allArticles.toSet().toList()));
        } else {
          state = AsyncData(ArticleListState(
              articles: allArticles.toSet().toList(), hasNext: data.hasNext));
        }
      },
      failure: (error) {
        if (state.asData == null) {
          state = AsyncError(error);
        }
      },
    );
  }

  /// 再読み込み
  Future<void> reload() async {
    _page = 1;
    await _fetch();
  }

  /// 読み込み
  Future<void> load() async {
    if (state.asData?.value.hasNext ?? false) {
      await _fetch();
    }
  }
}
