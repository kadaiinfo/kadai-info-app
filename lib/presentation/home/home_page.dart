// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/model/service/service.dart';

// Project imports:
import 'package:kadai_info_flutter/presentation/article/article_page.dart';
import 'package:kadai_info_flutter/presentation/balance/balance_page.dart';
import 'package:kadai_info_flutter/presentation/common/loading_indicator/loading_indicator.dart';
import 'package:kadai_info_flutter/presentation/content/content_page.dart';
import 'package:kadai_info_flutter/presentation/home/home_controller.dart';
import 'package:kadai_info_flutter/presentation/setting/setting_page.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_adsense_banner/timetable_adsense_banner.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final connectivity = ref.watch(connectivityService);
    if(connectivity is AsyncLoading || connectivity is AsyncError) {
      return const LoadingIndicator();
    } else if (!connectivity.asData!.value) {
      // TODO: ネットワークエラーを表示
    }

    final sqflite = ref.watch(sqfliteInitializer);
    if(sqflite is AsyncLoading || sqflite is AsyncError) {
      return const LoadingIndicator();
    }

    ref.watch(firebaseAnalyticsService);
    ref.watch(firebaseMessagingService).subscribeToTopic('article');



    final currentIndex = ref.watch(homeController).currentIndex;
    final controller = ref.read(homeController.notifier);
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: const [
          ArticlePage(),
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
      bottomSheet: const TimetableAdsenseBanner(),
    );
  }
}
