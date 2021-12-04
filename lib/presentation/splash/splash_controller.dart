import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/core/analytics/firebase_analytics_service.dart';
import 'package:kadai_info_flutter/core/constant/app_constant.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/firestore/firestore_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/sqflite_datasource.dart';
import 'package:kadai_info_flutter/presentation/splash/model/setup_model.dart';
import 'package:package_info/package_info.dart';

final splashController = Provider<SplashController>(
  (ref) => SplashController(),
);

class SplashController {
  /// セットアップ処理
  Future<SetupModel> setup() async {
    await Future.wait([
      /// スプラッシュ画像の最低表示時間
      Future.delayed(const Duration(milliseconds: 800)),

      /// SQFLiteのデータベース初期化
      SqfliteDatasource.init(),

    ]);
    FirebaseAnalyticsService();
    if (await Connectivity().checkConnectivity() == ConnectivityResult.none) {
      return SetupModel(shouldUpdate: false, canConnectNetwork: false);
    }
    await FirebaseMessaging.instance.subscribeToTopic('article');
    return SetupModel(shouldUpdate: await _shouldUpdate(), canConnectNetwork: true);
  }

  Future<bool> _shouldUpdate() async {
    bool flag = false;
    final RemoteConfig remoteConfig = RemoteConfig.instance;
    final packageInfo = await PackageInfo.fromPlatform();
    final version = packageInfo.version;
    try {
      final defaultValues = {
        'android_version': AppConstant.androidVersion,
        'ios_version': AppConstant.iosVersion
      };
      await remoteConfig.setDefaults(defaultValues);
      await remoteConfig.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 15),
        minimumFetchInterval: const Duration(seconds: 60),
      ));
      await remoteConfig.fetchAndActivate();
      final iosOrAndroid = Platform.isIOS ? 'ios_version' : 'android_version';
      final requiredVersion = remoteConfig.getString(iosOrAndroid);
      flag = version != requiredVersion;
    } catch (e) {
      rethrow;
    } finally {
      final iosOrAndroid = Platform.isIOS ? 'ios_version' : 'android_version';
      final requiredVersion = remoteConfig.getString(iosOrAndroid);
      flag = version != requiredVersion;
    }
    return (flag) ? true : false;
  }
}
