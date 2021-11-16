import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/model/binanbijo_candidate_model.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_candidate_tile/binanbijo_candidate_tile_controller.dart';

final binanbijoCandidateTileControllerProvider =
    StateNotifierProvider.autoDispose<BinanbijoCandidateTileController,
        BinanbijoCandidateModel>((ref) => BinanbijoCandidateTileController());
