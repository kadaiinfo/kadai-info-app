import 'package:kadai_info_flutter/domain/entity/binanbijo/candidate_collection.dart';
import 'package:kadai_info_flutter/domain/repository/binanbijo/i_binanbijo_repository.dart';

class BinanbijoApplication {
  BinanbijoApplication(this._repository);

  final IBinanbijoRepository _repository;

  // 候補者一覧取得
  Future<CandidateCollection?> getCandidateList() async {
    try {
      final result = await _repository.getCandidateCollection();
      return result;
    } catch(e) {
      return null;
    }
  }
}
