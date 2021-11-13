import 'package:dio/dio.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/micro_cms/model/mc_binanbijo_post.dart';

class McBinanbijoListResponse {
  final List<McBinanbijoPost> contents;
  final int totalCount;
  final int offset;
  final int limit;

  McBinanbijoListResponse.fromResponse(Response response)
      : contents = (response.data['contents'] as List)
            .map((e) => McBinanbijoPost.fromMap(e))
            .toList(),
        totalCount = response.data['totalCount'],
        offset = response.data['offset'],
        limit = response.data['limit'];
}
