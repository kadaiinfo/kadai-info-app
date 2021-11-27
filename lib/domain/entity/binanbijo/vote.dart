import 'package:freezed_annotation/freezed_annotation.dart';

part 'vote.freezed.dart';

@freezed
class Vote with _$Vote {
  const factory Vote({
    required int entryNumber,
    required String gender,
    required bool isStudent,
  }) = _Vote;
}