import 'dart:io';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
      Future.delayed(const Duration(seconds: 1)),

      /// SQFLiteのデータベース初期化
      SqfliteDatasource.init(),
    ]);
    final data = SetupModel(
      /// アプリ更新
      shouldUpdate: await _shouldUpdate(),
    );
    return data;
  }

  Future<bool> _shouldUpdate() async {
    final packageInfo = await PackageInfo.fromPlatform();
    final version = packageInfo.version;

    final RemoteConfig remoteConfig = RemoteConfig.instance;

    // TODO: アップデートのたびに数字を変える
    final defaultValues = {'android_version': '7.0.1', 'ios_version': '7.0.1'};
    await remoteConfig.setDefaults(defaultValues);
    await remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 10),
      minimumFetchInterval: Duration.zero,
    ));
    await remoteConfig.fetchAndActivate();

    final iosOrAndroid = Platform.isIOS ? 'ios_version' : 'android_version';
    final requiredVersion = remoteConfig.getString(iosOrAndroid);
    final flag = version != requiredVersion;
    return (flag) ? true : false;
  }
}
