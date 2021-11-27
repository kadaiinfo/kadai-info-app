import 'package:kadai_info_flutter/domain/entity/binanbijo/candidate_collection.dart';
import 'package:kadai_info_flutter/domain/entity/binanbijo/vote.dart';

abstract class IBinanbijoRepository {
  // 候補者一覧の取得
  Future<CandidateCollection> getCandidateCollection();

  // 投票
  Future<bool> fetchVote(Vote vote);
}