import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'article_item_state.dart';

class ArticleItemController extends StateNotifier<ArticleItemState> {
  ArticleItemController(ArticleItemState state) : super(state);

  /// お気に入り登録
  Future<void> registerFavorite() async {}

  /// お気に入り解除
  Future<void> releaseFavorite() async {}
}
