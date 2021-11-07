import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:launch_review/launch_review.dart';
import 'package:kadai_info_flutter/presentation/home/home_page.dart';
import 'package:kadai_info_flutter/presentation/splash/splash_controller.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(splashController);
    return Scaffold(
      body: FutureBuilder(
        future: controller.shouldUpdate(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (!snapshot.hasData || snapshot.hasError) {
              return Container(color: Colors.white);
            }
            if (snapshot.data == true) {
              WidgetsBinding.instance!.addPostFrameCallback((_) async {
                await showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("アップデートのお知らせ"),
                        content: const Text("新しいバージョンが利用できます。アップデートしてください。"),
                        actions: [
                          TextButton(
                              onPressed: () async {
                                LaunchReview.launch(
                                    androidAppId:
                                        "kadai.info.kadaiinfoapplication",
                                    iOSAppId: "1489778052",
                                    writeReview: false);
                              },
                              child: const Text('アップデート'))
                        ],
                      );
                    });
              });
            }
            return const HomePage();
          }
          return Container();
        },
      ),
    );
  }
}
