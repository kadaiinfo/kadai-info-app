// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:kadai_info_flutter/presentation/binanbijo/model/binanbijo_candidate_model.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_dialog/binanbijo_dialog.dart';

class BinanbijoVoteButton extends StatelessWidget {
  const BinanbijoVoteButton({Key? key, required this.candidate}) : super(key: key);

  final BinanbijoCandidateModel candidate;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () async {
          await showDialog(
              context: context,
              builder: (context) {
                return BinanbijoDialog(candidate: candidate);
              });
        },
        child: Image.asset('asset/image/binanbijo2021/vote.png'));
  }
}
