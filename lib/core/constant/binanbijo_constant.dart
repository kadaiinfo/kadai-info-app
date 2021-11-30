import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/core/constant/app_constant.dart';
import 'package:kadai_info_flutter/core/exception/network_exception.dart';

class BinanbijoConstant {
  const BinanbijoConstant();
  const BinanbijoConstant._();

  // 黒
  static const black = Color(0xFF250B0D);

  // 黄色
  static const yellow = Color(0xFFF6D967);

  // ダイアログベース白
  static const dialogBase = Color(0xFFF8F8F8);

  // ダイアログボーダー黒
  static const dialogBorder = Color(0xFF707070);

  // タブ赤
  static const girls = Color(0xFFC72430);

  // タブ青
  static const boys = Color(0xFF2D4195);

  // タブ未選択
  static const unselected = Color(0xFF868686);

  // ドメイン
  static const _baseUrl = 'https://bbs2021.microcms.io/api/v1/domain';
  static const _defaultHeaders = {
    'X-MICROCMS-API-KEY': AppConstant.microCmsApiKey
  };
  static final _dio = Dio()..options.headers = _defaultHeaders;
  Future<String> getDomainName() async {
    try {
      final response = await _dio.get(_baseUrl);
      if (response.statusCode != 200) throw NetworkException();
      return response.data['domain'] as String;
    } catch (e) {
      return '';
    }
  }
}
