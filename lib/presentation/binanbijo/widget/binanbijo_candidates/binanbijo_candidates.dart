import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/model/binanbijo_candidate_model.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_candidates/binanbijo_candidates_controller_provider.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_candidates/binanbijo_external_link_button.dart';

class BinanBijoCandidates extends HookConsumerWidget {
  const BinanBijoCandidates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final _candidateProvider = ref.watch(binanbijoCandidatesControllerProvider);
    return _candidateProvider.when(
        error: ((_, __, ___) =>
            const Center(child: CircularProgressIndicator())),
        loading: ((_) => const Center(child: CircularProgressIndicator())),
        data: ((candidates) {
          if (candidates == null) {
            return const Center(child: CircularProgressIndicator());
          }
          candidates.shuffle();
          return ListView(physics: const ClampingScrollPhysics(), children: [
            GridView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: width * 0.04,
                    mainAxisSpacing: width * 0.02),
                children: [
                  for (final candidate in candidates)
                    if (candidate.canVoted) _canVotedTile(candidate, width),
                ]),
            const BinanbijoExternalLinkButton()
          ]);
        }));
  }

  Widget _canVotedTile(BinanbijoCandidateModel candidate, double width) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _topString(candidate.description),
        (candidate.canVoted)
            ? _pictureStack(candidate.pictureUrl, width)
            : Image.network(candidate.pictureUrl),
        _bottomString(candidate.entryNumber, candidate.name)
      ],
    );
  }

  Widget _pictureStack(String pictureUrl, double width) {
    return Stack(clipBehavior: Clip.none, children: [
      Image.network(pictureUrl),
      Positioned(
          width: width * 0.2,
          bottom: width * -0.005,
          child: Image.asset('asset/image/binanbijo2021/vote.png')),
    ]);
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
