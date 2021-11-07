import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigatorUtil {
  NavigatorUtil._();

  static Future push({
    required BuildContext context,
    required Widget page,
    bool fullscreenDialog = false,
  }) async {
    return await Navigator.of(context).push(
      _pageRoute(page, fullscreenDialog),
    );
  }

  static PageRoute<Object?> _pageRoute(Widget page, bool fullscreenDialog) {
    return MaterialPageRoute(
      builder: (context) {
        return page;
      },
      fullscreenDialog: fullscreenDialog,
    );
  }
}
