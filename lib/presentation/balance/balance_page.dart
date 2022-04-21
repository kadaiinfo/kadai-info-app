import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/core/constant/app_constant.dart';
import 'package:kadai_info_flutter/presentation/balance/balance_controller_provider.dart';
import 'package:kadai_info_flutter/presentation/balance/widget/balance_scan_button/balance_scan_button.dart';
import 'package:kadai_info_flutter/presentation/balance/widget/univ_coop_card_info/univ_coop_card_info.dart';
import 'package:kadai_info_flutter/presentation/common/error_text/error_text.dart';
import 'package:kadai_info_flutter/presentation/common/loading_indicator/loading_indicator.dart';

class BalancePage extends ConsumerWidget {
  const BalancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(balanceControllerProvider);
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppConstant.outsidePadding,
          vertical: AppConstant.outsidePadding,
        ),
        child: asyncValue.when(
          data: (data) {
            if (!data.isAvailable) {
              return const _NotAvailableText();
            }
            return Column(
              children: [
                /// ICカード情報
                const UnivCoopCardInfo(),

                /// スキャンボタン
                const BalanceScanButton(),

                // バナー用余白
                SizedBox(
                  width: _width,
                  height: _width / 4,
                )
              ],
            );
          },
          error: (error, stack) => ErrorText(error),
          loading: () => const LoadingIndicator(),
        ),
      ),
    );
  }
}

class _NotAvailableText extends StatelessWidget {
  const _NotAvailableText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('お使いの端末はこちらの機能に対応しておりません。'),
    );
  }
}
