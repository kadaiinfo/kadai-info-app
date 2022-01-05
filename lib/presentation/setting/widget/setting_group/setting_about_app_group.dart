import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/core/constant/app_constant.dart';
// import 'package:kadai_info_flutter/presentation/setting/page/cantact/contact_page.dart';
import 'package:kadai_info_flutter/presentation/setting/widget/setting_item/setting_navigator_item.dart';
import 'package:kadai_info_flutter/presentation/setting/widget/setting_item/setting_web_view_item.dart';

class SettingAboutAppGroup extends StatelessWidget {
  const SettingAboutAppGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 13.0, bottom: 5.0),
            child: Text('このアプリについて',
                style: TextStyle(color: Colors.black54, fontSize: 13.0)),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 0.4, color: Colors.grey[400]!),
                    bottom: BorderSide(width: 0.4, color: Colors.grey[400]!))),
            child: Column(children: [
              const SettingWebViewItem(
                  settingTitle: 'KADAI INFOについて',
                  settingUrl: AppConstant.aboutUrl),
              const Divider(height: 0.5, indent: 15.0, endIndent: 15.0),
              const SettingWebViewItem(
                  settingTitle: 'お問い合わせ', settingUrl: AppConstant.inquiryUrl),
              // const Divider(height: 0.5, indent: 15.0, endIndent: 15.0),
              // const SettingNavigatorItem(settingTitle: '連絡先', page: ContactPage()),
              const Divider(height: 0.5, indent: 15.0, endIndent: 15.0),
              SettingNavigatorItem(settingTitle: 'ライセンス', page: LicensePage(
                applicationName: AppConstant.appName,
                applicationVersion: (Platform.isIOS) ? AppConstant.iosVersion : AppConstant.androidVersion,
              ))
            ]),
          )
        ],
      ),
    );
  }
}