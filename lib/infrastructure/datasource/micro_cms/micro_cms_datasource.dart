// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import 'package:kadai_info_flutter/core/constant/app_constant.dart';
import 'package:kadai_info_flutter/core/exception/network_exception.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/micro_cms/i_micro_cms_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/micro_cms/model/mc_binanbijo_list_response.dart';

class MicroCmsDatasource implements IMicroCmsDatasource {
  static const _baseUrl = 'https://bbs2021.microcms.io/api/v1/app?limit=24';
  static const _defaultHeaders = {
    'X-MICROCMS-API-KEY': AppConstant.microCmsBBS2021ApiKey
  };
  static final _dio = Dio()..options.headers = _defaultHeaders;

  @override
  Future<McBinanbijoListResponse> candidateList() async {
    final response = await _dio.get(_baseUrl);
    if (response.statusCode != 200) throw NetworkException();
    final data = McBinanbijoListResponse.fromResponse(response);
    return data;
  }
}
