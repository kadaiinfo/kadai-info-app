import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/presentation/splash/splash_page.dart';
import 'package:sizer/sizer.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  static const themeMode = ThemeMode.system;
  static const scheme = FlexScheme.aquaBlue;

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        title: 'Flutter Demo', // FIXME: タイトル変更
        theme: FlexColorScheme.light(
          scheme: scheme,
          scaffoldBackground: Colors.grey[100],
        ).toTheme,
        // darkTheme: FlexColorScheme.dark(
        //   scheme: scheme,
        // ).toTheme,
        themeMode: themeMode,
        home: const SplashPage(),
      ),
    );
  }
}
