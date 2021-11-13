import 'package:kadai_info_flutter/domain/entity/binanbijo/candidate.dart';
import 'package:kadai_info_flutter/domain/entity/binanbijo/candidate_collection.dart';
import 'package:kadai_info_flutter/domain/repository/binanbijo/i_binanbijo_repository.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/micro_cms/i_micro_cms_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/micro_cms/model/mc_binanbijo_post.dart';

class BinanbijoRepository implements IBinanbijoRepository {
  BinanbijoRepository({required this.mc});

  final IMicroCmsDatasource mc;

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
        canVoted: post.canVoted);
  }
}
