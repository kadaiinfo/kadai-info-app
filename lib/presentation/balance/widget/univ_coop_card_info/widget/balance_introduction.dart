// Flutter imports:
import 'package:flutter/material.dart';

/// 使い方の説明等
class BalanceIntroduction extends StatelessWidget {
  const BalanceIntroduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('1. 「スキャン」を押す。'),
              Text('2. 学生証にスマートフォンをかざす。'),
            ],
          ),
        ],
      ),
    );
  }
}
