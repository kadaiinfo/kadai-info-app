import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/sqflite_datasource.dart';

final splashController = Provider<SplashController>(
  (ref) => SplashController(),
);

class SplashController {
  Future<void> setup() async {
    await Future.wait([
      Future.delayed(const Duration(seconds: 1)),
      SqfliteDatasource.init(),
    ]);
  }
}
