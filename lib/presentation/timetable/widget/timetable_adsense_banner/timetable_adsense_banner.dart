import 'package:flutter/material.dart';

/// 広告バナー
class TimetableAdsenseBanner extends StatelessWidget {
  const TimetableAdsenseBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 520 / 100,
      child: Container(
        color: Colors.blue,
        child: Text('広告バナー'),
      ),
    );
  }
}
