import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/model/binanbijo_candidate_model.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_candidate_tile/binanbijo_candidate_picture_stack.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_candidate_tile/binanbijo_candidate_tile_controller_provider.dart';

class BinanbijoCandidateTile extends HookConsumerWidget {
  const BinanbijoCandidateTile({Key? key, required this.candidate})
      : super(key: key);

  final BinanbijoCandidateModel candidate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // candidateを保存
    final _tileController = ref.watch(binanbijoCandidateTileControllerProvider.notifier);
    _tileController.store(candidate);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _topString(candidate.description),
        (candidate.canVoted)
            ? BinanbijoCandidatePictureStack(pictureUrl: candidate.pictureUrl)
            : Image.network(candidate.pictureUrl),
        _bottomString(candidate.entryNumber, candidate.name)
      ],
    );
  }

  Widget _topString(String description) {
    final context = useContext();
    return Padding(
      padding:
          EdgeInsets.only(left: DefaultTextStyle.of(context).style.fontSize!),
      child: Text(description,
          style: DefaultTextStyle.of(context)
              .style
              .apply(fontSizeFactor: 0.8, fontWeightDelta: 2)),
    );
  }

  Widget _bottomString(int entryNumber, String name) {
    final context = useContext();
    return Center(
      child: Text('No.$entryNumber　$name',
          style: DefaultTextStyle.of(context).style.apply(fontWeightDelta: 2)),
    );
  }
}
