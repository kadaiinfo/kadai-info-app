import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/model/binanbijo_gender_model.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_description/binanbijo_description.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_candidates/binanbijo_candidates.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_scroll_view/controller/tab_bar_color_controller_provider.dart';

class BinanBijoScrollView extends HookConsumerWidget {
  const BinanBijoScrollView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _scrollController = useScrollController();
    final _tabController = useTabController(initialLength: 2);
    final _tabColorState = ref.watch(tabBarColorControllerProvider);
    final _tabColorController =
        ref.watch(tabBarColorControllerProvider.notifier);
    final _tabTextStyle = DefaultTextStyle.of(context)
        .style
        .apply(fontWeightDelta: 3, fontSizeFactor: 1.8);
    final _width = MediaQuery.of(context).size.width;
    return NestedScrollView(
      controller: _scrollController,
      headerSliverBuilder: (context, value) {
        return [
          const SliverToBoxAdapter(child: BinanBijoDescription()),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: _width * 0.14),
              child: TabBar(
                unselectedLabelStyle: _tabTextStyle,
                indicatorColor: _tabColorState.indicatorColor,
                indicatorWeight: 3.0,
                controller: _tabController,
                tabs: [
                  Tab(
                      child: Text('Girls',
                          style: _tabTextStyle.apply(
                              color: _tabColorState.girlsColor))),
                  Tab(
                      child: Text('Boys',
                          style: _tabTextStyle.apply(
                              color: _tabColorState.boysColor)))
                ],
                onTap: (index) {
                  _tabColorController.onTap(index);
                },
              ),
            ),
          )
        ];
      },
      body: Padding(
        padding: EdgeInsets.only(top: _width * 0.05),
        child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: const [
              BinanBijoCandidates(gender: Gender.female),
              BinanBijoCandidates(gender: Gender.male)
            ]),
      ),
    );
  }
}
