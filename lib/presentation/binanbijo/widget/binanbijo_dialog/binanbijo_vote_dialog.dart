// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/core/analytics/firebase_analytics_service.dart';
import 'package:kadai_info_flutter/core/constant/binanbijo_constant.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/model/binanbijo_candidate_model.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_dialog/controller/binanbijo_dialog_display_controller_provider.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_dialog/controller/binanbijo_vote_provider.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_scroll_view/controller/binanbijo_is_student_controller_provider.dart';

class BinanbijoVoteDialog extends ConsumerWidget {
  const BinanbijoVoteDialog({Key? key, required this.candidate})
      : super(key: key);

  final BinanbijoCandidateModel candidate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _width = MediaQuery.of(context).size.width;
    final _defaultTextStyle =
        DefaultTextStyle.of(context).style.apply(fontWeightDelta: 2);
    final _displayController =
        ref.watch(binanbijoDialogDisplayControllerProvider.notifier);

    return Dialog(
      shape: RoundedRectangleBorder(
          side: const BorderSide(color: BinanbijoConstant.dialogBorder),
          borderRadius: BorderRadius.all(Radius.circular(_width * 0.08))),
      child: Container(
        height: _width * 0.3,
        width: _width * 0.8,
        decoration: BoxDecoration(
            color: BinanbijoConstant.dialogBase,
            borderRadius: BorderRadius.circular(_width * 0.08)),
        child: Column(children: [
          Expanded(
            flex: 2,
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
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _voteButton('はい', _defaultTextStyle, () async {
                      final result =
                          await ref.read(binanbijoVoteProvider(candidate));
                      final _isStudent = ref
                          .read(binanbijoIsStudentControllerProvider)
                          .isStudent;
                      FirebaseAnalyticsService().sendEvent(
                          event: AnalyticsEvent.button,
                          parameterMap: {
                            'buttonId': 'binanbijo2021_vote',
                            'result': result.toString(),
                            'entryNumber': candidate.entryNumber.toString(),
                            'gender': candidate.gender.toString(),
                            'name': candidate.name,
                            'isStudent': _isStudent.toString()
                          });
                      if (!result) {
                        _displayController.cantVote();
                      } else {
                        _displayController.vote();
                      }
                    }),
                    _voteButton('いいえ', _defaultTextStyle, () async {
                      FirebaseAnalyticsService().sendEvent(
                          event: AnalyticsEvent.button,
                          parameterMap: {
                            'buttonId': 'binanbijo2021_vote_cancel'
                          });
                      Navigator.pop(context);
                    })
                  ]))
        ]),
      ),
    );
  }

  Widget _voteButton(String text, TextStyle textStyle, void Function() onTap) {
    return OutlinedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(horizontal: textStyle.fontSize! * 3.0)),
          textStyle: MaterialStateProperty.all(textStyle.apply()),
          side: MaterialStateProperty.all(
              const BorderSide(color: BinanbijoConstant.black)),
          shape: MaterialStateProperty.all(const StadiumBorder()),
          foregroundColor: MaterialStateProperty.all(BinanbijoConstant.black),
          overlayColor: MaterialStateProperty.all(Colors.black12),
        ),
        onPressed: onTap,
        child: Text(text));
  }
}
