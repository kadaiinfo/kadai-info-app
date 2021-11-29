import 'package:kadai_info_flutter/domain/entity/binanbijo/candidate.dart';
import 'package:kadai_info_flutter/domain/entity/binanbijo/candidate_collection.dart';
import 'package:kadai_info_flutter/domain/entity/binanbijo/univ_user_card.dart';
import 'package:kadai_info_flutter/domain/entity/binanbijo/vote.dart';
import 'package:kadai_info_flutter/domain/repository/binanbijo/i_binanbijo_repository.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/micro_cms/i_micro_cms_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/micro_cms/model/mc_binanbijo_post.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/nfc/i_nfc_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/i_sqflite_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_binanbijo_vote.dart';
import 'package:nfc_manager/nfc_manager.dart';

class BinanbijoRepository implements IBinanbijoRepository {
  BinanbijoRepository({required this.mc, required this.sqf, required this.nfc});

  final IMicroCmsDatasource mc;
  final ISqfliteDatasource sqf;
  final INfcDatasource nfc;

  @override
  Future<CandidateCollection> getCandidateCollection() async {
    final data = await mc.candidateList();
    return CandidateCollection(
        candidates: data.contents.map((e) => _toCandidate(e)).toList());
  }

  Candidate _toCandidate(McBinanbijoPost post) {
    return Candidate(
        name: post.name,
        entryNumber: post.entryNumber,
        pictureUrl: post.picture.url,
        description: post.description,
        canVoted: post.canVoted,
        gender: post.gender.first);
  }

  @override
  Future<bool> fetchVote(Vote vote) async {
    try {
      final daily = await sqf.fetchDailyVote(DateTime.now());
      int maleNum = 0;
      int femaleNum = 0;
      for (var voted in daily) {
        (voted.gender == '男') ? maleNum++ : femaleNum++;
      }
      if (maleNum >= 2 && vote.gender == '男') {
        return false;
      } else if (femaleNum >= 2 && vote.gender == '女') {
        return false;
      } else {
        await sqf.saveVote(_toSQFBinanbijoVote(vote));
        return true;
      }
    } catch (e) {
      rethrow;
    }
  }

  SQFBinanbijoVote _toSQFBinanbijoVote(Vote vote) {
    return SQFBinanbijoVote(
        entryNumber: vote.entryNumber,
        gender: vote.gender,
        isStudent: vote.isStudent,
        createdAt: DateTime.now());
  }

  @override
  Future<UnivUserCard> getUnivCard(NfcTag tag) async {
    try {
      final result = await nfc.univUserInfo(tag);
      return UnivUserCard(
          studentNumber: result.studentNumber, expiryAt: result.expiryAt);
    } catch (e) {
      rethrow;
    }
  }
}
