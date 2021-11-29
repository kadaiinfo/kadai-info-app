import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/core/constant/binanbijo_constant.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/model/binanbijo_candidate_model.dart';

class BinanbijoVotedDialog extends ConsumerWidget {
  const BinanbijoVotedDialog({Key? key, required this.candidate}) : super(key: key);

  final BinanbijoCandidateModel candidate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _width = MediaQuery.of(context).size.width;

    return Dialog(
      shape: RoundedRectangleBorder(
          side: const BorderSide(color: BinanbijoConstant.dialogBorder),
          borderRadius: BorderRadius.all(Radius.circular(_width * 0.08))),
      child: Container(
        height: _width * 0.2,
        width: _width * 0.8,
        decoration: BoxDecoration(
            color: BinanbijoConstant.dialogBase,
            borderRadius: BorderRadius.circular(_width * 0.08)),
        child: Center(
          child: Text('${candidate.name}さんに投票しました！',
              style: DefaultTextStyle.of(context).style.apply(
                    fontWeightDelta: 2,
                    decoration: TextDecoration.underline,
                  )),
        ),
      ),
    );
  }
}
