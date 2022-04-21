// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/application/binanbijo/binanbijo_application_provider.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/model/binanbijo_candidate_model.dart';

final binanbijoCandidatesProvider =
    FutureProvider<List<BinanbijoCandidateModel>?>((ref) async {
  final _repository = ref.read(binanbijoApplicationProvider);
  final result = await _repository.getCandidateList();
  if (result == null) return null;
  final candidateList = result.candidates
      .map((candidate) => BinanbijoCandidateModel.from(candidate))
      .toList();
  return candidateList;
});
