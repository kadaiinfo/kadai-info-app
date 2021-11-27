import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_space/timetable_space.dart';

/// 時限一覧
class TimetablePeriodList extends StatelessWidget {
  const TimetablePeriodList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _Period(period: '1'),
        _Period(period: '2'),
        _Period(period: '3'),
        _Period(period: '4'),
        _Period(period: '5'),
      ],
    );
  }
}

class _Period extends StatelessWidget {
  const _Period({
    Key? key,
    required this.period,
  }) : super(key: key);

  final String period;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: TimetableSpace.width,
        child: Center(
          child: Text(
            period,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
