import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/article/model/article_list_type.dart';
import 'package:kadai_info_flutter/presentation/article/widget/article_list/article_list.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ArticlePage extends HookConsumerWidget {
  const ArticlePage({Key? key}) : super(key: key);

  static const types = ArticleListType.values;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(
      initialLength: types.length,
      initialIndex: types.indexOf(ArticleListType.latest),
    );
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        bottom: TabBar(
          controller: tabController,
          isScrollable: true,
          indicatorColor: FlexColor.aquaBlueLightSecondary,
          tabs: types.map((e) {
            return Tab(text: e.toTitle);
          }).toList(),
        ),
      ),
      body: SafeArea(
        child: TabBarView(
          controller: tabController,
          children: types.map((type) {
            return ArticleList(
              type: type,
              key: PageStorageKey(type),
              refreshController: RefreshController(),
            );
          }).toList(),
        ),
      ),
    );
  }
}
