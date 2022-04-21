// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:kadai_info_flutter/domain/entity/binanbijo/candidate.dart';

part 'candidate_collection.freezed.dart';

@freezed
class CandidateCollection with _$CandidateCollection {
  const factory CandidateCollection({@Default([]) List<Candidate> candidates}) = _CandidateCollection;
}
