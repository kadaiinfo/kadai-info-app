import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_dialog/binanbijo_user_choice_dialog.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_dialog/binanbijo_vote_dialog.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_dialog/binanbijo_voted_dialog.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_dialog/controller/binanbijo_dialog_display_controller_provider.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_dialog/model/binanbijo_dialog_display_model.dart';
import 'package:kadai_info_flutter/presentation/common/loading_indicator/loading_indicator.dart';

class BinanbijoDialog extends ConsumerWidget {
  const BinanbijoDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _displayController =
        ref.watch(binanbijoDialogDisplayControllerProvider);
    return _displayController.when(
        error: (_, __) => const LoadingIndicator(),
        loading: () => const LoadingIndicator(),
        data: (display) {
          if (display == const BinanbijoDialogDisplayModel.choiceUser()) {
            return const BinanbijoUserChoiceDialog();
          } else if (display == const BinanbijoDialogDisplayModel.vote()) {
            return const BinanbijoVoteDialog();
          } else if (display == const BinanbijoDialogDisplayModel.voted()) {
            return const BinanbijoVotedDialog();
          } else {
            return const LoadingIndicator();
          }
        });
  }
}
