import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/splash/widget/update_dialog.dart';
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
        builder: (context, AsyncSnapshot<Map<String, bool>> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (!snapshot.hasData || snapshot.hasError) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.data == null) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.data!['shouldUpdate'] == true) {
              WidgetsBinding.instance!.addPostFrameCallback((_) async {
                await showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) => const UpdateDialog());
              });
            }
            return const HomePage();
          }
          return const Center(
            child: Image(
              image: AssetImage('asset/icon/splash_icon.png'),
              fit: BoxFit.contain,
            ),
          );
        },
      ),
    );
  }
}
