import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/application/article/article_application.dart';
import 'package:kadai_info_flutter/presentation/article/model/article_list_type.dart';

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
    final data = state.asData;
    if (data != null) {
      await load();
    } else {
      await reload();
    }
  }

  /// 再読み込み
  Future<void> reload() async {
    final category = type.toCategory;
    final result = await _app.getArticleList(
      page: _page,
      perPage: _perPage,
      categories: category == null ? [] : [category],
    );
    result.when(
      success: (data) {
        if (data.hasNext) {
          _page++;
        }
        state = AsyncData(ArticleListState.from(data));
      },
      failure: (error) {
        state = AsyncError(error);
      },
    );
  }

  /// 読み込み
  Future<void> load() async {}
}
