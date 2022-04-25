// Flutter imports:
import 'package:flutter/material.dart';

/// サークル一覧のアイテム
class CircleItem extends StatelessWidget {
  const CircleItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            /// 画像
            Container(),

            /// サークル名
            Container(),
          ],
        ),
      ),
    );
  }
}
