// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/model/wp_post.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/model/wp_response_header.dart';

class WPPostListResponse {
  final List<WPPost> body;
  final WPResponseHeader header;

  WPPostListResponse.fromResponse(Response response)
      : body = (response.data as List).map((e) => WPPost.fromMap(e)).toList(),
        header = WPResponseHeader.fromMap(response.headers.map);
}
