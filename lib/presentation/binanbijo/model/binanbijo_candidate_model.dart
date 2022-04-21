// Package imports:
import 'package:equatable/equatable.dart';

// Project imports:
import 'package:kadai_info_flutter/domain/entity/binanbijo/candidate.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/model/binanbijo_gender_model.dart';

class BinanbijoCandidateModel extends Equatable {
  final String name;
  final int entryNumber;
  final String pictureUrl;
  final String description;
  final bool canVoted;
  final Gender gender;

  const BinanbijoCandidateModel._(
      {required this.name,
      required this.entryNumber,
      required this.pictureUrl,
      required this.description,
      required this.canVoted,
      required this.gender});

  const BinanbijoCandidateModel.dummy(
      {this.name = '',
      this.entryNumber = 0,
      this.pictureUrl = '',
      this.description = '',
      this.canVoted = false,
      this.gender = Gender.male});

  factory BinanbijoCandidateModel.from(Candidate candidate) {
    return BinanbijoCandidateModel._(
        name: candidate.name,
        entryNumber: candidate.entryNumber,
        pictureUrl: candidate.pictureUrl,
        description: candidate.description,
        canVoted: candidate.canVoted,
        gender:
            (candidate.gender == Gender.male.jp) ? Gender.male : Gender.female);
  }

  @override
  List<Object?> get props => [name];
}
