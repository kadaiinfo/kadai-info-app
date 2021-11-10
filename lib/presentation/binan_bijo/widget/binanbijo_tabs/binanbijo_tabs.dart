import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/binan_bijo/widget/binanbijo_persons.dart';
import 'package:kadai_info_flutter/presentation/binan_bijo/widget/binanbijo_tabs/controller/tab_bar_color_controller_provider.dart';

class BinanBijoTabs extends HookConsumerWidget {
  const BinanBijoTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _controller = useTabController(initialLength: 2);
    final _tabState = ref.watch(TabBarColorControllerProvider);
    final _tabController = ref.watch(TabBarColorControllerProvider.notifier);
    return Column(
      children: [
        Row(
          children: [
            Expanded(flex: 1, child: Container()),
            Expanded(
              flex: 5,
              child: TabBar(
                labelStyle: const TextStyle(
                    fontSize: 22.0, fontWeight: FontWeight.bold),
                unselectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.bold),
                indicatorColor: _tabState.indicatorColor,
                indicatorWeight: 3.0,
                controller: _controller,
                tabs: [
                  Tab(
                      child: Text('Girls',
                          style: TextStyle(color: _tabState.girlsColor))),
                  Tab(
                      child: Text('Boys',
                          style: TextStyle(color: _tabState.boysColor)))
                ],
                onTap: (index) {
                  _tabController.onTap(index);
                },
              ),
            ),
            Expanded(flex: 1, child: Container())
          ],
        ),
        SizedBox(
          height: 400,
          child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _controller,
              children: const [BinanBijoPersons(), BinanBijoPersons()]),
        )
      ],
    );
  }
}
