import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:kadai_info_flutter/core/constant/app_constant.dart';
import 'package:kadai_info_flutter/core/exception/network_exception.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/i_wordpress_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/model/wp_post_list_response.dart';

class WordpressDatasource implements IWordpressDatasource {
  static const _baseUrl = 'https://kadai-info.com/wp-json/wp/v2';
  static final _defaultHeaders = {
    'Authorization': 'Basic ' +
        base64Encode(utf8.encode(AppConstant.wordPressApiKey))
  };
  static const _commonParams = '_embed=true&status=publish';
  static final _dio = Dio()..options.headers = _defaultHeaders;

  @override
  Future<WPPostListResponse> postList({
    int page = 1,
    int perPage = 10,
    List<String> categories = const [],
    List<String> categoriesExclude = const [],
    List<String> include = const [],
    List<String> tags = const [],
  }) async {
    try {
      final categoriesParam = _listToString(categories);
      final categoriesExcludeParam = _listToString(categoriesExclude);
      final includeParam = _listToString(include);
      final tagsParam = _listToString(tags);
      final url =
          '$_baseUrl/posts?page=$page&per_page=$perPage&categories=$categoriesParam&categories_exclude=$categoriesExcludeParam&$_commonParams&include=$includeParam&tags=$tagsParam';
      final response = await _dio.get(url);
      if (response.statusCode == 200) {
        final data = WPPostListResponse.fromResponse(response);
        return data;
      } else {
        throw NetworkException();
      }
    } catch (e) {
      rethrow;
    }
  }

  /// [List]から[String]に変換
  String _listToString(List value) {
    return value.join(',');
  }
}
