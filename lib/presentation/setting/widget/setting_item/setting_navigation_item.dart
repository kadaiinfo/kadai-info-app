import 'package:flutter/material.dart';

class SettingNavigationItem extends StatelessWidget {
  const SettingNavigationItem({Key? key, required this.settingTitle})
      : super(key: key);

  final String settingTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          color: Colors.white,
          width: double.maxFinite,
          padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
          child: Text(
            settingTitle,
            style: const TextStyle(color: Colors.black, fontSize: 18.0),
          ),
        ),
        onTap: () {
        });
  }
}
