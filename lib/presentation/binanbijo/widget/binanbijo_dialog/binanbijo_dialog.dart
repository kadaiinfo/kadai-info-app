// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/presentation/binanbijo/model/binanbijo_candidate_model.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_dialog/binanbijo_cant_vote_dialog.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_dialog/binanbijo_user_choice_dialog.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_dialog/binanbijo_vote_dialog.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_dialog/binanbijo_voted_dialog.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_dialog/controller/binanbijo_dialog_display_controller_provider.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_dialog/model/binanbijo_dialog_display_model.dart';
import 'package:kadai_info_flutter/presentation/common/loading_indicator/loading_indicator.dart';

class BinanbijoDialog extends ConsumerWidget {
  const BinanbijoDialog({Key? key, required this.candidate}) : super(key: key);

  final BinanbijoCandidateModel candidate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _displayController =
        ref.watch(binanbijoDialogDisplayControllerProvider);
    return _displayController.when(
        error: (_, __) => const LoadingIndicator(),
        loading: () => const LoadingIndicator(),
        data: (display) {
          if (display == const BinanbijoDialogDisplayModel.choiceUser()) {
            return BinanbijoUserChoiceDialog(candidate: candidate);
          } else if (display == const BinanbijoDialogDisplayModel.vote()) {
            return BinanbijoVoteDialog(candidate: candidate);
          } else if (display == const BinanbijoDialogDisplayModel.voted()) {
            return BinanbijoVotedDialog(candidate: candidate);
          } else if (display == const BinanbijoDialogDisplayModel.cantVote()) {
            return const BinanbijoCantVoteDialog();
          } else {
            return const LoadingIndicator();
          }
        });
  }
}
