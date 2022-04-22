// Dart imports:

// Flutter imports:
import 'dart:io';

import 'package:android_intent/android_intent.dart';
import 'package:app_settings/app_settings.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info/package_info.dart';
import 'package:settings_ui/settings_ui.dart';

class NotificationPage extends HookConsumerWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('通知')),
      body: SettingsList(sections: [
        SettingsSection(tiles: [
          SettingsTile(
            onPressed: (context) async {
              if (Platform.isAndroid) {
                final _packageInfo = await PackageInfo.fromPlatform();
                final _deviceInfo = await (DeviceInfoPlugin()).androidInfo;
                await AndroidIntent(
                    action: 'android.settings.APP_NOTIFICATION_SETTINGS',
                    arguments: {
                      'app_package': _packageInfo.packageName,
                      'app_uid': _deviceInfo.androidId,
                      'android.provider.extra.APP_PACKAGE':
                          _packageInfo.packageName
                    }).launch();
              } else if (Platform.isIOS) {
                await AppSettings.openAppSettings();
              }
            },
            title: const Text('通知のスタイル'),
            trailing: const Icon(Icons.launch),
          )
        ])
      ]),
    );
  }
}
