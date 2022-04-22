// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:kadai_info_flutter/presentation/home/home_page.dart';

// Project imports:

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  static const themeMode = ThemeMode.system;
  static const scheme = FlexScheme.aquaBlue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: FlexColorScheme.light(
        scheme: scheme,
        scaffoldBackground: Colors.grey[100],
      ).toTheme,
      themeMode: themeMode,
      home: const HomePage(),
    );
  }
}
