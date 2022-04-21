// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/presentation/common/custom_cache/custom_chche_manager.dart';

final customCacheManagerProvider = Provider((ref) => CustomCacheManager.instance);
