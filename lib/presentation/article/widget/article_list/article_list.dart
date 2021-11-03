import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/article/model/article_list_type.dart';
import 'package:kadai_info_flutter/presentation/article/widget/article_list/article_list_controller_provider.dart';
import 'package:kadai_info_flutter/presentation/common/error_text/error_text.dart';
import 'package:kadai_info_flutter/presentation/common/loading_indicator/loading_indicator.dart';

import '../article_item/article_item.dart';

class ArticleList extends HookConsumerWidget {
  const ArticleList({
    Key? key,
    required this.type,
  }) : super(key: key);

  final ArticleListType type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articleListControllerProvider(type));
    final controller = ref.read(articleListControllerProvider(type).notifier);
    final scrollController = useScrollController();
    return RefreshIndicator(
      onRefresh: () async {
        await controller.reload();
      },
      child: state.when(
        data: (data) {
          final articles = data.articles;
          return ListView.separated(
            controller: scrollController,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final article = articles[index];
              return ArticleItem(article: article);
            },
            separatorBuilder: (context, index) {
              return const Divider(height: 0);
            },
            itemCount: articles.length,
          );
        },
        loading: (_) => const LoadingIndicator(),
        error: (error, stack, _) => ErrorText(error),
      ),
    );
  }
}
