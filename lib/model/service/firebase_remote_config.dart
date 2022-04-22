import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final remoteConfigService = Provider((_) => RemoteConfig.instance);