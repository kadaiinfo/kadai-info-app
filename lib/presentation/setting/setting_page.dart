import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/presentation/setting/widget/setting_group/setting_group.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  static const settingGroupTitleList = ['一般', 'このアプリについて'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return SettingGroup(groupTitle: settingGroupTitleList[index]);
          },
          itemCount: settingGroupTitleList.length,
        ),
      ),
    );
  }
}
