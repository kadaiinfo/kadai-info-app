import 'package:dio/dio.dart';
import 'package:kadai_info_flutter/core/exception/network_exception.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/micro_cms/i_micro_cms_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/micro_cms/model/mc_binanbijo_list_response.dart';

class MicroCmsDatasource implements IMicroCmsDatasource {
  static const _baseUrl = 'https://bbs2021.microcms.io/api/v1/app?limit=12';
  static const _defaultHeaders = {
    'X-MICROCMS-API-KEY': 'f6b8cde361284e42a2a402d1405a4055289e'
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
