import 'package:kadai_info_flutter/domain/entity/binanbijo/candidate_collection.dart';

abstract class IBinanbijoRepository {
  // 候補者一覧の取得
  Future<CandidateCollection> getCandidateCollection();
}