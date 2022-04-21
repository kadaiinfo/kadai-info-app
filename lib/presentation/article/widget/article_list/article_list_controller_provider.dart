// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/application/article/article_application_provider.dart';
import 'package:kadai_info_flutter/presentation/article/model/article_list_type.dart';
import 'package:kadai_info_flutter/presentation/article/widget/article_list/article_list_controller.dart';
import 'article_list_state.dart';

final articleListControllerProvider = StateNotifierProvider.family<
    ArticleListController, AsyncValue<ArticleListState>, ArticleListType>(
  (ref, type) {
    return ArticleListController(
      ref.read(articleApplicationProvider),
      type: type,
    );
  },
);
