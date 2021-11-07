import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/application/article/article_application.dart';
import 'package:kadai_info_flutter/presentation/article/widget/article_favorite_button/article_favorite_button_state.dart';

class ArticleFavoriteButtonController
    extends StateNotifier<ArticleFavoriteButtonState> {
  ArticleFavoriteButtonController({
    required this.app,
    required this.articleId,
  }) : super(ArticleFavoriteButtonState()) {
    _fetch();
  }

  final ArticleApplication app;
  final String articleId;

  Future<void> _fetch() async {
    final result = await app.isFavorite(articleId);
    result.when(
      success: (data) {
        if (mounted) {
          state = ArticleFavoriteButtonState(isFavorite: data.isFavorite);
        }
      },
      failure: (error) {},
    );
  }

  /// 記事のお気に入り登録
  Future<void> registerFavorite() async {
    final result = await app.registerFavorite(articleId);
    result.when(
      success: (data) {
        if (mounted) {
          state = ArticleFavoriteButtonState(isFavorite: data.isFavorite);
        }
      },
      failure: (error) {},
    );
  }

  /// 記事のお気に入り解除
  Future<void> releaseFavorite() async {
    final result = await app.releaseFavorite(articleId);
    result.when(
      success: (data) {
        if (mounted) {
          state = ArticleFavoriteButtonState(isFavorite: data.isFavorite);
        }
      },
      failure: (error) {},
    );
  }
}
