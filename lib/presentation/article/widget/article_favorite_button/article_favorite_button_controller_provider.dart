import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/application/article/article_application_provider.dart';
import 'package:kadai_info_flutter/presentation/article/widget/article_favorite_button/article_favorite_button_controller.dart';
import 'package:kadai_info_flutter/presentation/article/widget/article_favorite_button/article_favorite_button_state.dart';

final articleFavoriteButtonControllerProvider = StateNotifierProvider.family
    .autoDispose<ArticleFavoriteButtonController, ArticleFavoriteButtonState,
        String>(
  (ref, articleId) {
    return ArticleFavoriteButtonController(
      app: ref.read(articleApplicationProvider),
      articleId: articleId,
    );
  },
);
