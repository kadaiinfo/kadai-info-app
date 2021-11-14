import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_candidate_tile/binanbijo_candidate_tile.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_candidates/binanbijo_candidates_controller_provider.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_candidates/binanbijo_external_link_button.dart';

class BinanBijoCandidates extends ConsumerWidget {
  const BinanBijoCandidates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _width = MediaQuery.of(context).size.width;
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
                    crossAxisSpacing: _width * 0.04,
                    mainAxisSpacing: _width * 0.02),
                children: [
                  for (final candidate in candidates)
                    if (candidate.canVoted)
                      BinanbijoCandidateTile(candidate: candidate),
                ]),
            const BinanbijoExternalLinkButton()
          ]);
        }));
  }
}
