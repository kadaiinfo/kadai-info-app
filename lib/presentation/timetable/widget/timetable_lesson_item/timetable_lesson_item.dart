import 'package:flutter/material.dart';

/// 授業コマ
class TimetableLessonItem extends StatelessWidget {
  const TimetableLessonItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(5),
        child: AspectRatio(
          aspectRatio: 1 / 1,
          child: Container(
            color: Colors.red,
            child: const Text('コマ'),
          ),
        ),
      ),
    );
  }
}
