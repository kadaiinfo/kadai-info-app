import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/article/widget/article_favorite_button/article_favorite_button_state.dart';

class ArticleFavoriteButtonController
    extends StateNotifier<ArticleFavoriteButtonState> {
  ArticleFavoriteButtonController() : super(ArticleFavoriteButtonState());

  /// 記事のお気に入り登録
  Future<void> registerFavorite() async {
    state = ArticleFavoriteButtonState(isFavorite: true);
  }

  /// 記事のお気に入り解除
  Future<void> releaseFavorite() async {
    state = ArticleFavoriteButtonState(isFavorite: false);
  }
}
