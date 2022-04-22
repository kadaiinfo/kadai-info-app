import 'dart:io';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/core/constant/app_constant.dart';
import 'package:kadai_info_flutter/model/service/service.dart';

final shouldUpdateChecker = FutureProvider((ref) async {
  final info = await ref.watch(packageInfoService);
  final config = ref.watch(remoteConfigService);
  final defaultValues = {
    'android_version': AppConstant.androidVersion,
    'ios_version': AppConstant.iosVersion
  };
  await config.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 10),
      minimumFetchInterval: const Duration(minutes: 10)));
  await config.setDefaults(defaultValues);
  await config.fetchAndActivate();
  final iosOrAndroid = Platform.isIOS ? 'ios_version' : 'android_version';
  final requestVersion = config.getString(iosOrAndroid);
  return Version.check(deviceVersion: info.version, remoteVersion: requestVersion);
});
