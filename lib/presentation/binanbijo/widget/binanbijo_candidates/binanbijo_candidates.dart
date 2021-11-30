import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/model/binanbijo_gender_model.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_candidate_tile/binanbijo_candidate_tile.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_candidates/binanbijo_candidates_provider.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_candidates/binanbijo_external_link_button.dart';
import 'package:kadai_info_flutter/presentation/common/loading_indicator/loading_indicator.dart';

class BinanBijoCandidates extends ConsumerWidget {
  const BinanBijoCandidates({Key? key, required this.gender}) : super(key: key);

  final Gender gender;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _width = MediaQuery.of(context).size.width;
    final _candidatesProvider = ref.watch(binanbijoCandidatesProvider);
    return _candidatesProvider.when(
        error: ((e, ee) => Center(child: Text(e.toString() + ee.toString()))),
        loading: (() => const Center(child: Text('ローディング中...'))),
        data: ((candidates) {
          if (candidates == null) {
            return const LoadingIndicator();
          }
          candidates.shuffle();
          return ListView(physics: const ClampingScrollPhysics(), children: [
            GridView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: _width * 0.04,
                    mainAxisSpacing: _width * 0.02),
                children: [
                  for (final candidate in candidates)
                    if (candidate.canVoted && candidate.gender == gender)
                      BinanbijoCandidateTile(candidate: candidate),
                  for (final candidate in candidates)
                    if (!candidate.canVoted && candidate.gender == gender)
                      BinanbijoCandidateTile(candidate: candidate)
                ]),
            const BinanbijoExternalLinkButton()
          ]);
        }));
  }
}
