import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/interactor/article/article_interactor_provider.dart';
import 'package:kadai_info_flutter/presentation/article/widget/article_item/article_item_controller.dart';

import 'article_item_state.dart';

final articleItemControllerProvider = StateNotifierProvider.autoDispose
    .family<ArticleItemController, ArticleItemState, String>(
  (ref, id) {
    final article = ref
        .watch(articleInteractorProvider)
        .data!
        .value
        .data
        .articles
        .singleWhere((element) => element.id == id);
    final _state = ArticleItemState.from(article);
    return ArticleItemController(_state);
  },
);
