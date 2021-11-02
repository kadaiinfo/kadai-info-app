import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:kadai_info_flutter/core/exception/network_exception.dart';
import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/i_wordpress_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/model/wp_post_list_response.dart';

class WordpressDatasource implements IWordpressDatasource {
  static const _baseUrl = 'https://kadai-info.com/wp-json/wp/v2';
  static final _defaultHeaders = {
    'Authorization': 'Basic ' +
        base64Encode(utf8.encode('meshiprio503:3qGK AE3N t6Je 8GjP k7uH PvJI'))
  };
  static const _commonParams = '_embed=true';
  static final _dio = Dio()..options.headers = _defaultHeaders;

  @override
  Future<Result<WPPostListResponse>> postList({
    int page = 1,
    int perPage = 10,
    List<int> categories = const [],
    List<int> categoriesExclude = const [],
  }) async {
    try {
      final categoriesParam = _listToString(categories);
      final categoriesExcludeParam = _listToString(categoriesExclude);
      final url =
          '$_baseUrl/posts?page=$page&per_page=$perPage&categories=$categoriesParam&categories_exclude=$categoriesExcludeParam&$_commonParams';
      final response = await _dio.get(url);
      if (response.statusCode == 200) {
        final data = WPPostListResponse.fromResponse(response);
        return Result.success(data);
      } else {
        return Result.failure(NetworkException());
      }
    } catch (e) {
      return Result.failure(Exception(e));
    }
  }

  /// [List]から[String]に変換
  String _listToString(List value) {
    return value.join(',');
  }
}
