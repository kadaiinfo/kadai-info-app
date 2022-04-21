// Flutter imports:
import 'package:flutter/material.dart';

/// フッター
class ContentFooter extends StatelessWidget {
  const ContentFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 520 / 100,
      child: Container(
        color: Colors.blue,
        child: const Text('フッター'),
      ),
    );
  }
}
