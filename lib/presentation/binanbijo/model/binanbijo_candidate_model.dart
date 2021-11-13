import 'package:equatable/equatable.dart';
import 'package:kadai_info_flutter/domain/entity/binanbijo/candidate.dart';

class BinanbijoCandidateModel extends Equatable {
  final String name;
  final int entryNumber;
  final String pictureUrl;
  final String description;
  final bool canVoted;

  const BinanbijoCandidateModel._(
      {required this.name,
      required this.entryNumber,
      required this.pictureUrl,
      required this.description,
      required this.canVoted});

  factory BinanbijoCandidateModel.from(Candidate candidate) {
    return BinanbijoCandidateModel._(
        name: candidate.name,
        entryNumber: candidate.entryNumber,
        pictureUrl: candidate.pictureUrl,
        description: candidate.description,
        canVoted: candidate.canVoted);
  }

  @override
  List<Object?> get props => [name];
}
