// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/core/analytics/firebase_analytics_service.dart';
import 'package:kadai_info_flutter/core/constant/binanbijo_constant.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/model/binanbijo_candidate_model.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_dialog/controller/binanbijo_dialog_display_controller_provider.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_scroll_view/controller/binanbijo_is_student_controller_provider.dart';

class BinanbijoUserChoiceDialog extends ConsumerWidget {
  const BinanbijoUserChoiceDialog({Key? key, required this.candidate})
      : super(key: key);

  final BinanbijoCandidateModel candidate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _width = MediaQuery.of(context).size.width;
    final _displayController =
        ref.watch(binanbijoDialogDisplayControllerProvider.notifier);
    final _isStudentController =
        ref.read(binanbijoIsStudentControllerProvider.notifier);

    return Dialog(
        shape: RoundedRectangleBorder(
            side: const BorderSide(color: BinanbijoConstant.dialogBorder, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(_width * 0.08))),
        child: Container(
            height: _width * 0.5,
            width: _width * 0.8,
            decoration: BoxDecoration(
                color: BinanbijoConstant.dialogBase,
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
                        onTap: () async {
                          await FirebaseAnalyticsService().sendEvent(
                            event: AnalyticsEvent.scan,
                            parameterMap: {
                              'scanId': 'binanbijo2021_scan'
                            }
                          );
                          await _isStudentController.scan();
                        },
                      )),
                  Expanded(
                      flex: 4,
                      child: InkWell(
                          child: Image.asset(
                              'asset/image/binanbijo2021/general_vote.png'),
                          onTap: () async {
                            await FirebaseAnalyticsService().sendEvent(
                            event: AnalyticsEvent.button,
                            parameterMap: {
                              'buttonId': 'binanbijo2021_general_vote'
                            }
                          );
                            _displayController.choiceUser();
                          })),
                  Expanded(flex: 1, child: Container()),
                ]),
              )
            ])));
  }
}
