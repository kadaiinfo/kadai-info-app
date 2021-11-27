import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/model/binanbijo_candidate_model.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_dialog/controller/binanbijo_dialog_display_controller_provider.dart';

class BinanbijoUserChoiceDialog extends ConsumerWidget {
  const BinanbijoUserChoiceDialog({Key? key, required this.candidate}) : super(key: key);

  static const _dialogBaseColor = Color(0xFFF8F8F8);
  static const _dialogBorderColor = Color(0xFFB7B7B7);
  final BinanbijoCandidateModel candidate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _width = MediaQuery.of(context).size.width;
    final _displayController =
        ref.watch(binanbijoDialogDisplayControllerProvider.notifier);

    return Dialog(
        shape: RoundedRectangleBorder(
            side: const BorderSide(color: _dialogBorderColor, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(_width * 0.08))),
        child: Container(
            height: _width * 0.5,
            width: _width * 0.8,
            decoration: BoxDecoration(
                color: _dialogBaseColor,
                borderRadius: BorderRadius.circular(_width * 0.08)),
            child: Column(children: [
              Expanded(
                flex: 1,
                child: Center(
                  child: Text('${candidate.name}さんに投票しますか？',
                      style: DefaultTextStyle.of(context).style.apply(
                            fontWeightDelta: 2,
                            decoration: TextDecoration.underline,
                          )),
                ),
              ),
              Expanded(
                flex: 3,
                child: Row(children: [
                  Expanded(flex: 1, child: Container()),
                  Expanded(
                      flex: 4,
                      child: InkWell(
                        child: Image.asset(
                            'asset/image/binanbijo2021/student_vote.png'),
                        onTap: () {
                          _displayController.choiceUser();
                        },
                      )),
                  Expanded(
                      flex: 4,
                      child: InkWell(
                          child: Image.asset(
                              'asset/image/binanbijo2021/general_vote.png'),
                          onTap: () {
                            _displayController.choiceUser();
                          })),
                  Expanded(flex: 1, child: Container()),
                ]),
              )
            ])));
  }
}
