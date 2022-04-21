import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/presentation/setting/widget/setting_group/setting_about_app_group.dart';
import 'package:kadai_info_flutter/presentation/setting/widget/setting_group/setting_general_group.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: ListView(
        children: const [
          SettingGeneralGroup(),
          SettingAboutAppGroup()
        ],
      ),
    );
  }
}
