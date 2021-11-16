import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_candidate_tile/binanbijo_candidate_tile_controller_provider.dart';

class BinanbijoVotedDialog extends ConsumerWidget {
  const BinanbijoVotedDialog({Key? key}) : super(key: key);

  static const _dialogBaseColor = Color(0xFFF8F8F8);
  static const _dialogBorderColor = Color(0xFF707070);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _width = MediaQuery.of(context).size.width;
    final _tileState = ref.read(binanbijoCandidateTileControllerProvider);

    return Dialog(
      shape: RoundedRectangleBorder(
          side: const BorderSide(color: _dialogBorderColor),
          borderRadius: BorderRadius.all(Radius.circular(_width * 0.08))),
      child: Container(
        height: _width * 0.2,
        width: _width * 0.8,
        decoration: BoxDecoration(
            color: _dialogBaseColor,
            borderRadius: BorderRadius.circular(_width * 0.08)),
        child: Center(
          child: Text('${_tileState.name}さんに投票しました！',
              style: DefaultTextStyle.of(context).style.apply(
                    fontWeightDelta: 2,
                    decoration: TextDecoration.underline,
                  )),
        ),
      ),
    );
  }
}
