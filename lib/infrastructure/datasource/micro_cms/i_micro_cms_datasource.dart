import 'package:kadai_info_flutter/domain/entity/binanbijo2021/candidate.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/micro_cms/model/mc_binanbijo_list_response.dart';

abstract class IMicroCmsDatasource {
  // 候補者一覧
  Future<McBinanbijoListResponse> candidateList();
}