import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/presentation/setting/widget/setting_item/setting_notification_item.dart';
import 'package:kadai_info_flutter/presentation/setting/widget/setting_item/setting_web_view_item.dart';

class SettingGroup extends StatelessWidget {
  const SettingGroup({Key? key, required this.groupTitle}) : super(key: key);

  final String groupTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 13.0, bottom: 5.0),
            child: Text(groupTitle,
                style: const TextStyle(color: Colors.black54, fontSize: 13.0)),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 0.4, color: Colors.grey[400]!),
                    bottom: BorderSide(width: 0.4, color: Colors.grey[400]!))),
            child: Column(
                children: settingItems(
              groupTitle,
            )),
          )
        ],
      ),
    );
  }
}

List<Widget> settingItems(String groupTitle) {
  if (groupTitle == '一般') {
    return const [SettingNotificationItem(settingTitle: '通知')];
  } else if (groupTitle == 'このアプリについて') {
    return const [
      SettingWebViewItem(
          settingTitle: 'KADAI INFOについて',
          settingUrl: 'https://kadai-info.com/lp/about-us/'),
      Divider(height: 0.5, indent: 15.0, endIndent: 15.0),
      SettingWebViewItem(
          settingTitle: 'お問い合わせ', settingUrl: 'https://kadai-info.com/contact/')
    ];
  } else {
    return [];
  }
}
