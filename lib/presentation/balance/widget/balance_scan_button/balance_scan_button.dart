import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/balance/widget/balance_scan_button/balance_scan_button_controller_provider.dart';

/// 学生証読取りボタン
class BalanceScanButton extends ConsumerWidget {
  const BalanceScanButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(balanceScanButtonControllerProvider.notifier);
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () async {
          await controller.scanICCard();
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: const Text(
          'スキャン',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
