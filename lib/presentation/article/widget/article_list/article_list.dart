import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/article/widget/article_list/article_list_controller_provider.dart';

import '../article_item/article_item.dart';
import 'article_list_state.dart';

class ArticleList extends HookConsumerWidget {
  const ArticleList({
    Key? key,
    required this.type,
  }) : super(key: key);

  final ArticleTabType type;

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
          final ids = data.ids;
          return ListView.separated(
            controller: scrollController,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final id = ids[index];
              return ArticleItem(id: id);
            },
            separatorBuilder: (context, index) {
              return const Divider(height: 0);
            },
            itemCount: ids.length,
          );
        },
        loading: (_) => Container(),
        error: (error, stack, _) => Container(),
      ),
    );
  }
}
