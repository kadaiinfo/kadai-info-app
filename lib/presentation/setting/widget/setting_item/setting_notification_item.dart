import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/presentation/setting/widget/setting_notification/setting_notification.dart';

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
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SettingNotification(
                        notificationSettings: notificationSettings
                      )));
        });
  }
}
