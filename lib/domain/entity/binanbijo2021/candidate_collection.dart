import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kadai_info_flutter/domain/entity/binanbijo2021/candidate.dart';

part 'candidate_collection.freezed.dart';

@freezed
class CandidateCollection with _$CandidateCollection {
  const factory CandidateCollection({@Default([]) List<Candidate> candidates}) = _CandidateCollection;
}
