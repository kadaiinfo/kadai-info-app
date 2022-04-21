// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:android_intent/android_intent.dart';
import 'package:app_settings/app_settings.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info/package_info.dart';

class NotificationPage extends HookConsumerWidget {
  const NotificationPage({Key? key, required this.notificationSettings})
      : super(key: key);

  final NotificationSettings notificationSettings;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Column(children: [
        Container(
            color: Colors.grey[100], width: double.maxFinite, height: 54.0),
        GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 0.4, color: Colors.grey[400]!),
                      bottom:
                          BorderSide(width: 0.4, color: Colors.grey[400]!))),
              child: Container(
                color: Colors.white,
                width: double.maxFinite,
                padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                child: Row(
                  children: const [
                    Expanded(
                      child: Text(
                        '通知のスタイル',
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                      ),
                    ),
                    Icon(Icons.launch, size: 18.0, color: Colors.black26)
                  ],
                ),
              ),
            ),
            onTap: () async {
              // https://twitter.com/_mono/status/1290550446088581121?s=20
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
            }),
      ])),
    );
  }
}
