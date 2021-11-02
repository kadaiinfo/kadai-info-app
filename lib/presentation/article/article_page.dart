import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/article/widget/article_list/article_list.dart';

import 'widget/article_list/article_list_state.dart';

class ArticlePage extends HookConsumerWidget {
  const ArticlePage({Key? key}) : super(key: key);

  static const types = ArticleTabType.values;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(
      initialLength: types.length,
      initialIndex: types.indexOf(ArticleTabType.latest),
    );
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        bottom: TabBar(
          controller: tabController,
          isScrollable: true,
          tabs: types.map((e) {
            return Tab(text: e.toString());
          }).toList(),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: types.map((type) {
                  return ArticleList(type: type);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
