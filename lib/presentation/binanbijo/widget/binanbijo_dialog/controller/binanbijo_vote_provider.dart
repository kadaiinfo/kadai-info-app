import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/application/binanbijo/binanbijo_application_provider.dart';
import 'package:kadai_info_flutter/domain/entity/binanbijo/vote.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/model/binanbijo_candidate_model.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/model/binanbijo_gender_model.dart';

final binanbijoVoteProvider =
    Provider.autoDispose.family<Future<bool>, BinanbijoCandidateModel>(
        (ref, candidate) {
  return ref.read(binanbijoApplicationProvider).fetchVote(Vote(
      entryNumber: candidate.entryNumber,
      gender: candidate.gender.jp,
      isStudent: false));
});
