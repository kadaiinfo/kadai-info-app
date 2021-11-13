import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/presentation/balance/widget/balance_scan_button/balance_scan_button.dart';

class BalancePage extends StatelessWidget {
  const BalancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: const [
              BalanceScanButton(),
            ],
          ),
        ),
      ),
    );
  }
}
