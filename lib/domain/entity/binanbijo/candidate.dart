import 'package:freezed_annotation/freezed_annotation.dart';

part 'candidate.freezed.dart';

@freezed
class Candidate with _$Candidate {
  const factory Candidate({
    required String name,
    required int entryNumber,
    required String pictureUrl,
    required String description,
    required bool canVoted
  }) = _Candidate;
}