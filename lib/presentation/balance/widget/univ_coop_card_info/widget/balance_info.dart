import 'package:flutter/material.dart';

class BalanceInfo extends StatelessWidget {
  const BalanceInfo({
    Key? key,
    required this.type,
    required this.balance,
    this.point,
  }) : super(key: key);

  final BalanceInfoType type;
  final String balance;
  final String? point;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            /// アイコン
            _TypeIcon(type),

            const SizedBox(width: 5),

            /// タイトル
            _TypeTitle(type: type),
          ],
        ),

        /// 残高とポイント
        _BalancePoint(amount: balance, point: point),
      ],
    );
  }
}

class _TypeTitle extends StatelessWidget {
  const _TypeTitle({
    Key? key,
    required this.type,
  }) : super(key: key);

  final BalanceInfoType type;

  @override
  Widget build(BuildContext context) {
    return Text(
      type.toTitle,
      style: const TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _BalancePoint extends StatelessWidget {
  const _BalancePoint({
    Key? key,
    required this.amount,
    required this.point,
  }) : super(key: key);

  final String amount;
  final String? point;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          amount,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        if (point != null) const SizedBox(width: 5),
        if (point != null) Text('($point)'),
      ],
    );
  }
}

class _TypeIcon extends StatelessWidget {
  const _TypeIcon(
    this.type, {
    Key? key,
  }) : super(key: key);

  final BalanceInfoType type;

  @override
  Widget build(BuildContext context) {
    return Icon(
      type.toIcon,
      size: 30,
      color: Colors.green,
    );
  }
}

enum BalanceInfoType {
  prepaid,
  meal,
}

extension on BalanceInfoType {
  /// タイトルに変換
  String get toTitle {
    switch (this) {
      case BalanceInfoType.prepaid:
        return 'プリペイド';
      case BalanceInfoType.meal:
        return 'ミール';
    }
  }

  /// アイコンに変換
  IconData get toIcon {
    switch (this) {
      case BalanceInfoType.prepaid:
        return Icons.payments;
      case BalanceInfoType.meal:
        return Icons.set_meal;
    }
  }
}
