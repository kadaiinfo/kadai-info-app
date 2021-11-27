import 'package:dio/dio.dart';
import 'package:kadai_info_flutter/core/exception/network_exception.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/gas/i_gas_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/gas/model/gas_adsense_banner.dart';

class GasDatasource implements IGasDatasource {
  static final _dio = Dio();

  @override
  Future<GASAdsenseBanner> adsenseBanner() async {
    try {
      const url =
          'https://script.google.com/macros/s/AKfycbyom6Co0KBrhEbuavjuvqa6uf0w9TPfUqV_eWfyL864iNJFwUN7n26dKpF7o6HLWTNAFw/exec';
      final response = await _dio.get(url);
      if (response.statusCode == 200) {
        final data = response.data;
        final banner = GASAdsenseBanner.from(data);
        return banner;
      } else {
        throw NetworkException();
      }
    } catch (e) {
      rethrow;
    }
  }
}
