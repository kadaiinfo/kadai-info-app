import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/presentation/setting/widget/setting_web_view/setting_web_view.dart';

class SettingWebViewItem extends StatelessWidget {
  const SettingWebViewItem(
      {Key? key, required this.settingTitle, required this.settingUrl})
      : super(key: key);

  final String settingTitle;
  final String settingUrl;

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
              const Icon(Icons.launch, size: 18.0, color: Colors.black26)
            ],
          ),
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SettingWebView(url: settingUrl)));
        });
  }
}
