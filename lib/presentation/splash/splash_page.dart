import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/home/home_page.dart';
import 'package:kadai_info_flutter/presentation/splash/splash_controller.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(splashController);
    return Scaffold(
      body: FutureBuilder(
        future: controller.setup(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return const HomePage();
          }
          return const Center(
            child: Image(
              image: AssetImage('asset/icon/icon.png'),
            ),
          );
        },
      ),
    );
  }
}
