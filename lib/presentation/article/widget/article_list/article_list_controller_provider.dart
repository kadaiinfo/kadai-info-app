import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/interactor/article/article_interactor_provider.dart';
import 'package:kadai_info_flutter/presentation/article/widget/article_list/article_list_controller.dart';

import 'article_list_state.dart';

final articleListControllerProvider = StateNotifierProvider.family<
    ArticleListController, AsyncValue<ArticleListState>, ArticleTabType>(
  (ref, type) {
    late final AsyncValue<ArticleListState> _state;
    final collection = ref.watch(articleInteractorProvider);
    collection.when(
      data: (data) {
        final collection = data.data;
        _state = AsyncData(ArticleListState.from(collection, type));
      },
      loading: (_) {
        _state = const AsyncLoading();
      },
      error: (error, stack, _) {
        _state = AsyncError(error);
      },
    );
    return ArticleListController(
      _state,
      ref.watch(articleInteractorProvider.notifier),
    );
  },
);
