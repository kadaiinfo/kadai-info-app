// Package imports:
import 'package:nfc_manager/nfc_manager.dart';

// Project imports:
import 'package:kadai_info_flutter/domain/entity/binanbijo/candidate_collection.dart';
import 'package:kadai_info_flutter/domain/entity/binanbijo/vote.dart';
import 'package:kadai_info_flutter/domain/repository/binanbijo/i_binanbijo_repository.dart';

class BinanbijoApplication {
  BinanbijoApplication(this._repository);

  final IBinanbijoRepository _repository;

  // 候補者一覧取得
  Future<CandidateCollection?> getCandidateList() async {
    try {
      final result = await _repository.getCandidateCollection();
      return result;
    } catch (e) {
      return null;
    }
  }

  //  投票
  Future<bool> fetchVote(Vote vote) async {
    try {
      final result = await _repository.fetchVote(vote);
      return result;
    } catch (e) {
      return false;
    }
  }

  // 学生証の取得
  Future<bool> getUnivCard(NfcTag tag) async {
    try {
      final result = await _repository.getUnivCard(tag);
      // 有効期限を判定
      return DateTime.now().isBefore(result.expiryAt);
    } catch (e) {
      return false;
    }
  }
}
