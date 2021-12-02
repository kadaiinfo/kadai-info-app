import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/presentation/setting/widget/setting_item/setting_notification_item.dart';

class SettingGeneralGroup extends StatelessWidget {
  const SettingGeneralGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 13.0, bottom: 5.0),
            child: Text('一般',
                style: TextStyle(color: Colors.black54, fontSize: 13.0)),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 0.4, color: Colors.grey[400]!),
                    bottom: BorderSide(width: 0.4, color: Colors.grey[400]!))),
            child: Column(
                children: const [SettingNotificationItem(settingTitle: '通知')]),
          )
        ],
      ),
    );
  }
}