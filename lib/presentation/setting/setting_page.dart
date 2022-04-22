// Flutter imports:
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/model/service/firebase_messaging.dart';
import 'package:kadai_info_flutter/presentation/setting/page/page.dart';

// Project imports:
import 'package:settings_ui/settings_ui.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingPage extends ConsumerWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('設定')),
      body: SettingsList(sections: [
        SettingsSection(title: const Text('一般'), tiles: [
          SettingsTile(
              title: const Text('通知'),
              leading: const Icon(Icons.notifications_active_outlined),
              trailing: const Icon(Icons.navigate_next),
              onPressed: (context) async {
                await ref.read(firebaseMessagingService).requestPermission();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const NotificationPage())));
              })
        ]),
        SettingsSection(title: const Text('このアプリについて'), tiles: [
          SettingsTile(
            title: const Text('KADAI INFOについて'),
            trailing: const Icon(Icons.launch),
            onPressed: (context) async {
              const url = 'https://kadai-info.com/lp/about-us/';
              if (await canLaunch(url)) {
                await launch(url, forceSafariVC: false);
              }
            },
          ),
          SettingsTile(
            title: const Text('お問合せ'),
            trailing: const Icon(Icons.launch),
            onPressed: (context) async {
              const url = 'https://kadai-info.com/contact/';
              if (await canLaunch(url)) {
                await launch(url, forceSafariVC: false);
              }
            },
          ),
          SettingsTile(
            title: const Text('ライセンス'),
            trailing: const Icon(Icons.navigate_next),
            onPressed: (context) => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LicensePage())),
          )
        ])
      ]),
    );
  }
}
