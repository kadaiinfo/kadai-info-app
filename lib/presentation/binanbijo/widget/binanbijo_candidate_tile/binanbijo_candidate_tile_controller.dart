import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/model/binanbijo_candidate_model.dart';

class BinanbijoCandidateTileController
    extends StateNotifier<BinanbijoCandidateModel> {
  BinanbijoCandidateTileController() : super(const BinanbijoCandidateModel.dummy());

  void store(BinanbijoCandidateModel candidate) {
    state = candidate;
  }
}
