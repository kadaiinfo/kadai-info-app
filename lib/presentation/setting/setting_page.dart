// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:settings_ui/settings_ui.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      // body: ListView(
      //   children: const [
      //     SettingGeneralGroup(),
      //     SettingAboutAppGroup()
      //   ],
      // ),
      body: SettingsList(sections: [
        SettingsSection(title: const Text('一般'), tiles: [
          SettingsTile.navigation(
            title: const Text('通知'),
            leading: const Icon(Icons.notifications_active_outlined),
          )
        ])
      ]),
    );
  }
}
