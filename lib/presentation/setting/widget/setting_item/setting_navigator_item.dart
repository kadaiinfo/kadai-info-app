// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:kadai_info_flutter/core/util/navigator_util.dart';

class SettingNavigatorItem extends StatelessWidget {
  const SettingNavigatorItem({Key? key, required this.settingTitle, required this.page})
      : super(key: key);

  final String settingTitle;
  final Widget page;

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
      onTap: () {
        NavigatorUtil.push(
          context: context,
          page: page,
        );
      },
    );
  }
}
