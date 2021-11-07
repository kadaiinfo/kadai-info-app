import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';

class UpdateDialog extends StatelessWidget {
  const UpdateDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("アップデートのお知らせ"),
      content: const Text("新しいバージョンが利用できます。アップデートしてください。"),
      actions: [
        TextButton(
            onPressed: () async {
              LaunchReview.launch(
                  androidAppId: "kadai.info.kadaiinfoapplication",
                  iOSAppId: "1489778052",
                  writeReview: false);
            },
            child: const Text('アップデート'))
      ],
    );
  }
}
