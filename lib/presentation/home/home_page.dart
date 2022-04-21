// import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/article/article_page.dart';
import 'package:kadai_info_flutter/presentation/balance/balance_page.dart';
// import 'package:kadai_info_flutter/presentation/binanbijo/binanbijo_page.dart';
import 'package:kadai_info_flutter/presentation/content/content_page.dart';
import 'package:kadai_info_flutter/presentation/home/home_controller.dart';
import 'package:kadai_info_flutter/presentation/setting/setting_page.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_adsense_banner/timetable_adsense_banner.dart';
// import 'package:kadai_info_flutter/presentation/timetable/timetable_page.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(homeController).currentIndex;
    final controller = ref.read(homeController.notifier);
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: const [
          ArticlePage(),
          // TimetablePage(),
          BalancePage(),
          ContentPage(),
          SettingPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: '記事',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.calendar_today_rounded),
          //   label: '時間割',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: '残高',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.all_inbox),
            label: 'コンテンツ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '設定',
          ),
        ],
        currentIndex: currentIndex,
        onTap: controller.selectTab,
        type: BottomNavigationBarType.fixed,
      ),
      // floatingActionButton: OpenContainer(
      //   transitionType: ContainerTransitionType.fade,
      //   transitionDuration: const Duration(milliseconds: 400),
      //   openBuilder: (context, action) {
      //     return const BinanbijoPage();
      //   },
      //   closedElevation: 8.0,
      //   closedColor: const Color(0xFFF6D967),
      //   closedShape: const RoundedRectangleBorder(
      //       borderRadius: BorderRadius.all(Radius.circular(50.0))),
      //   closedBuilder: (context, action) {
      //     return const CircleAvatar(
      //         maxRadius: 50.0,
      //         minRadius: 35.0,
      //         backgroundColor: Color(0xFFF6D967),
      //         backgroundImage:
      //             AssetImage('asset/logo/binanbijo2021/binanbijo2021logo.png'));
      //   },
      // ),
      bottomSheet: const TimetableAdsenseBanner(),
    );
  }
}
