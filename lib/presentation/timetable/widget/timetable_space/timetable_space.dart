import 'package:flutter/material.dart';

/// 時間割の余白
class TimetableSpace extends StatelessWidget {
  const TimetableSpace({Key? key}) : super(key: key);

  static const double height = 30;
  static const double width = 30;

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: height,
      width: width,
    );
  }
}
