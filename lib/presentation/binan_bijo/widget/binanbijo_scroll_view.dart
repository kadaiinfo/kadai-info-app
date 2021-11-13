import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/binan_bijo/widget/binanbijo_description.dart';
import 'package:kadai_info_flutter/presentation/binan_bijo/widget/binanbijo_candidates.dart';
import 'package:kadai_info_flutter/presentation/binan_bijo/widget/binanbijo_tabs/controller/tab_bar_color_controller_provider.dart';

class BinanBijoScrollView extends HookConsumerWidget {
  const BinanBijoScrollView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _scrollController = useScrollController();
    final _tabController = useTabController(initialLength: 2);
    final _tabColorState = ref.watch(tabBarColorControllerProvider);
    final _tabColorController =
        ref.watch(tabBarColorControllerProvider.notifier);
    return NestedScrollView(
      controller: _scrollController,
      headerSliverBuilder: (context, value) {
        return [
          const SliverToBoxAdapter(child: BinanBijoDescription()),
          SliverToBoxAdapter(
            child: Row(
              children: [
                Expanded(flex: 1, child: Container()),
                Expanded(
                  flex: 5,
                  child: TabBar(
                    labelStyle: const TextStyle(
                        fontSize: 22.0, fontWeight: FontWeight.bold),
                    unselectedLabelStyle:
                        const TextStyle(fontWeight: FontWeight.bold),
                    indicatorColor: _tabColorState.indicatorColor,
                    indicatorWeight: 3.0,
                    controller: _tabController,
                    tabs: [
                      Tab(
                          child: Text('Girls',
                              style:
                                  TextStyle(color: _tabColorState.girlsColor))),
                      Tab(
                          child: Text('Boys',
                              style:
                                  TextStyle(color: _tabColorState.boysColor)))
                    ],
                    onTap: (index) {
                      _tabColorController.onTap(index);
                    },
                  ),
                ),
                Expanded(flex: 1, child: Container())
              ],
            ),
          )
        ];
      },
      body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: const [BinanBijoCandidates(), BinanBijoCandidates()]),
    );
  }
}
