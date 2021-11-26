import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/model/binanbijo_candidate_model.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_vote_button.dart/binanbijo_vote_button.dart';
import 'package:kadai_info_flutter/presentation/common/custom_cache/custom_cache_manager_provider.dart';
import 'package:kadai_info_flutter/presentation/common/loading_indicator/loading_indicator.dart';

class BinanbijoCandidatePictureStack extends ConsumerWidget {
  const BinanbijoCandidatePictureStack(
      {Key? key, required this.pictureUrl, required this.candidate})
      : super(key: key);

  final String pictureUrl;
  final BinanbijoCandidateModel candidate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _width = MediaQuery.of(context).size.width;
    final _manager = ref.read(customCacheManagerProvider);
    return Stack(clipBehavior: Clip.none, children: [
      CachedNetworkImage(
        imageUrl: pictureUrl,
        placeholder: (context, url) => const LoadingIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
        cacheManager: _manager,
      ),
      Positioned(
          width: _width * 0.2,
          bottom: _width * -0.005,
          child: BinanbijoVoteButton(candidate: candidate)),
    ]);
  }
}
