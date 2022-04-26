// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cached_network_image/cached_network_image.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/model/banner.dart';
import 'package:kadai_info_flutter/presentation/common/loading_indicator/loading_indicator.dart';

/// 広告バナー
class TimetableAdsenseBanner extends ConsumerWidget {
  const TimetableAdsenseBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final banner = ref.watch(bannerProvider);
    return banner.maybeWhen(
        data: ((data) => !data.display
            ? const SizedBox.shrink()
            : SizedBox(
                height: width / 4,
                child: Center(
                    child: CachedNetworkImage(
                        imageUrl: data.image.url, fit: BoxFit.fitHeight)),
              )),
        orElse: () => const LoadingIndicator());
  }
}
