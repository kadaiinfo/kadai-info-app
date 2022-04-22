// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cached_network_image/cached_network_image.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/core/util/navigator_util.dart';
import 'package:kadai_info_flutter/model/service/service.dart';
import 'package:kadai_info_flutter/presentation/common/loading_indicator/loading_indicator.dart';
import 'package:kadai_info_flutter/presentation/common/web_view_page/web_view_page.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_adsense_banner/timetable_adsense_banner_controller_provider.dart';

/// 広告バナー
class TimetableAdsenseBanner extends ConsumerWidget {
  const TimetableAdsenseBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _width = MediaQuery.of(context).size.width;
    final asyncValue = ref.watch(timetableAdsenseBannerControllerProvider);
    return SizedBox(
      height: _width / 4,
      child: asyncValue.when(
        data: (data) {
          return GestureDetector(
            onTap: () async {
              ref.read(firebaseAnalyticsService).sendEvent(
                event: AnalyticsEvent.banner,
                parameterMap: {
                  'customerName': 'kagobura',
                  'bannerId': 'kagobura_1'
                }
              );
              // リンクを開く
              NavigatorUtil.push(
                context: context,
                page: WebViewPage(data.link),
                fullscreenDialog: true,
              );
            },

            /// バナー画像
            child: CachedNetworkImage(
              imageUrl: data.imageUrl,
              fit: BoxFit.fitHeight,
            ),
          );
        },
        error: (error, _) => const SizedBox.shrink(child: LoadingIndicator()),
        loading: () => const SizedBox.shrink(child: LoadingIndicator()),
      ),
    );
  }
}
