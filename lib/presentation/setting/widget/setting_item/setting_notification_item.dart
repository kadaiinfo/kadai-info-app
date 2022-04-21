// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

// Project imports:
import 'package:kadai_info_flutter/core/util/navigator_util.dart';
import 'package:kadai_info_flutter/presentation/setting/page/notification/notification_page.dart';

class SettingNotificationItem extends StatelessWidget {
  const SettingNotificationItem({Key? key, required this.settingTitle})
      : super(key: key);

  final String settingTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: Colors.white,
        width: double.maxFinite,
        padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                settingTitle,
                style: const TextStyle(color: Colors.black, fontSize: 18.0),
              ),
            ),
            const Icon(Icons.arrow_forward_ios,
                size: 18.0, color: Colors.black26)
          ],
        ),
      ),
      onTap: () async {
        await Firebase.initializeApp();
        final notificationSettings =
            await FirebaseMessaging.instance.requestPermission();
        NavigatorUtil.push(
          context: context,
          page: NotificationPage(notificationSettings: notificationSettings),
        );
      },
    );
  }
}
