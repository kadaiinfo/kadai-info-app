import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/core/util/navigator_util.dart';
import 'package:kadai_info_flutter/presentation/common/web_view_page/web_view_page.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_adsense_banner/timetable_adsense_banner_controller_provider.dart';

/// 広告バナー
class TimetableAdsenseBanner extends ConsumerWidget {
  const TimetableAdsenseBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(timetableAdsenseBannerControllerProvider);
    return SizedBox(
      width: double.infinity,
      child: asyncValue.when(
        data: (data) {
          return GestureDetector(
            onTap: () {
              NavigatorUtil.push(
                context: context,
                page: WebViewPage(data.link),
                fullscreenDialog: true,
              );
            },
            child: CachedNetworkImage(
              imageUrl: data.imageUrl,
              fit: BoxFit.fitWidth,
            ),
          );
        },
        error: (error, _) => const SizedBox(),
        loading: () => const SizedBox(),
      ),
    );
  }
}
