import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_dialog/binanbijo_dialog.dart';

class BinanbijoVoteButton extends StatelessWidget {
  const BinanbijoVoteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () async {
          await showDialog(
              context: context,
              builder: (context) {
                return const BinanbijoDialog();
              });
        },
        child: Image.asset('asset/image/binanbijo2021/vote.png'));
  }
}
