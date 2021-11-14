import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_dialog/binanbijo_user_choice_dialog.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_dialog/binanbijo_vote_dialog.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_dialog/binanbijo_voted_dialog.dart';

class BinanbijoVoteButton extends ConsumerWidget {
  const BinanbijoVoteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
        onTap: () async {
          await showDialog(
              context: context,
              builder: (_) {
                return const BinanbijoUserChoiceDialog();
              });
          await showDialog(
              context: context,
              builder: (_) {
                return const BinanbijoVoteDialog();
              });
          await showDialog(
              context: context,
              builder: (_) {
                return const BinanbijoVotedDialog();
              });
        },
        child: Image.asset('asset/image/binanbijo2021/vote.png'));
  }
}
