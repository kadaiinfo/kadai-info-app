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
import 'package:launch_review/launch_review.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final connectivity = ref.watch(connectivityStreamService);
    if (connectivity is AsyncLoading || connectivity is AsyncError) {
      return const LoadingWhiteIndicator();
    } else if (!connectivity.asData!.value) {
      return const HomeNetworkErrorDialog();
    }

    final sqflite = ref.watch(sqfliteInitializer);
    if (sqflite is AsyncError) {
      return const HomeDatabaseErrorDialog();
    } else if (sqflite is AsyncLoading) {
      return const LoadingWhiteIndicator();
    }

    final shouldUpdate = ref.watch(shouldUpdateChecker);
    if (shouldUpdate is AsyncLoading || shouldUpdate is AsyncError) {
      return const LoadingWhiteIndicator();
    } else if (!shouldUpdate.asData!.value) {
      return const HomeUpdateDialog();
    }

    ref.watch(firebaseAnalyticsService);
    ref.watch(firebaseMessagingService).subscribeToTopic('wordpress-publish');

    final pageOrdinal = ref.watch(pageOrdinalProvider);
    final pageOrdinalController = ref.watch(pageOrdinalProvider.notifier);
    return Scaffold(
      body: IndexedStack(
        index: pageOrdinal.index,
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
        currentIndex: pageOrdinal.index,
        onTap: (index) {
          pageOrdinalController.update((state) => PageOrdinal.values[index]);
        },
        type: BottomNavigationBarType.fixed,
      ),
      bottomSheet: const TimetableAdsenseBanner(),
    );
  }
}

class HomeNetworkErrorDialog extends StatelessWidget {
  const HomeNetworkErrorDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: const AlertDialog(
          title: Text('ネットワークエラー'),
          content: Text('ネットワークに接続していません。接続を見直してください。'),
        ));
  }
}

class HomeDatabaseErrorDialog extends StatelessWidget {
  const HomeDatabaseErrorDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: const AlertDialog(
          title: Text('データベース初期化エラー'),
          content: Text('データベースの初期化に失敗しました。アプリを再起動してください。'),
        ));
  }
}

class HomeUpdateDialog extends StatelessWidget {
  const HomeUpdateDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: AlertDialog(
          title: const Text('アップデートのお知らせ'),
          content: const Text('新しいバージョンが利用できます。アップデートしてください。'),
          actions: [
            TextButton(
                onPressed: () async {
                  LaunchReview.launch(
                      androidAppId: "kadai.info.kadaiinfoapplication",
                      iOSAppId: "1489778052",
                      writeReview: false);
                },
                child: const Text('アップデート'))
          ],
        ));
  }
}
