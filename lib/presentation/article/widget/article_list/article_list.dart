import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/article/model/article_list_type.dart';
import 'package:kadai_info_flutter/presentation/article/widget/article_list/article_list_controller_provider.dart';
import 'package:kadai_info_flutter/presentation/common/error_text/error_text.dart';
import 'package:kadai_info_flutter/presentation/common/loading_indicator/loading_indicator.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../article_item/article_item.dart';

class ArticleList extends HookConsumerWidget {
  const ArticleList({
    Key? key,
    required this.type,
    required this.refreshController,
  }) : super(key: key);

  final ArticleListType type;
  final RefreshController refreshController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articleListControllerProvider(type));
    final controller = ref.read(articleListControllerProvider(type).notifier);
    final scrollController = useScrollController();
    useEffect(() {
      scrollController.addListener(() => _listener(scrollController, ref.read));
      return null;
    }, const []);
    return SmartRefresher(
      controller: refreshController,
      onRefresh: () async {
        await controller.reload();
        refreshController.refreshCompleted();
      },
      child: state.when(
        data: (data) {
          final articles = data.articles;

          if (articles.isEmpty) {
            return const ErrorText('記事が見つかりませんでした。');
          }

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
        loading: () => const LoadingIndicator(),
        error: (error, stack) => ErrorText(error),
      ),
    );
  }

  /// スクロール位置によって更新するためのリスナー
  void _listener(ScrollController controller, Reader reader) {
    final maxScrollExtent = controller.position.maxScrollExtent;
    final currentPosition = controller.position.pixels;
    if (maxScrollExtent > 0 && (maxScrollExtent - 20.0) <= currentPosition) {
      reader(articleListControllerProvider(type).notifier).load();
    }
  }
}
