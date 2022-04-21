// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/application/binanbijo/binanbijo_application_provider.dart';
import 'package:kadai_info_flutter/domain/entity/binanbijo/vote.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/model/binanbijo_candidate_model.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/model/binanbijo_gender_model.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_scroll_view/controller/binanbijo_is_student_controller_provider.dart';

final binanbijoVoteProvider = Provider.autoDispose
    .family<Future<bool>, BinanbijoCandidateModel>((ref, candidate) {
  final _isStudent = ref.read(binanbijoIsStudentControllerProvider).isStudent;
  return ref.read(binanbijoApplicationProvider).fetchVote(Vote(
      entryNumber: candidate.entryNumber,
      gender: candidate.gender.jp,
      isStudent: _isStudent));
});
