import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/model/binanbijo_candidate_model.dart';
import 'package:kadai_info_flutter/presentation/common/custom_cache/custom_cache_manager_provider.dart';
import 'package:kadai_info_flutter/presentation/common/loading_indicator/loading_indicator.dart';

class BinanbijoCandidatePicture extends ConsumerWidget {
  const BinanbijoCandidatePicture({Key? key, required this.candidate})
      : super(key: key);

  final BinanbijoCandidateModel candidate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _manager = ref.read(customCacheManagerProvider);
    return CachedNetworkImage(
      imageUrl: '${candidate.pictureUrl}?w=900&h=600',
      placeholder: (context, url) => const LoadingIndicator(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
      cacheManager: _manager,
    );
  }
}
