import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'model.dart';

final bannerProvider = FutureProvider((ref) async {
  final result = await ref.watch(httpService).get(
      Uri.parse('https://kadai-info-app.microcms.io/api/v1/banner'),
      headers: {'X-MICROCMS-API-KEY': const String.fromEnvironment('MICRO_CMS_API_KEY')});
  final json =
      await jsonDecode(result.body) as JsonMap;
  return Banner.fromJson(json);
});