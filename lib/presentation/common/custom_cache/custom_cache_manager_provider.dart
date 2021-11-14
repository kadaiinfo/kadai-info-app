import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/common/custom_cache/custom_chche_manager.dart';

final customCacheManagerProvider = Provider((ref) => CustomCacheManager.instance);