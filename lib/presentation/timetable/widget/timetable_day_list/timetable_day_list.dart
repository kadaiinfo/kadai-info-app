import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_space/timetable_space.dart';

/// 曜日一覧
class TimetableDayList extends StatelessWidget {
  const TimetableDayList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const TimetableSpace(),
        Expanded(
          child: Row(
            children: const [
              _Day(day: '月'),
              _Day(day: '火'),
              _Day(day: '水'),
              _Day(day: '木'),
              _Day(day: '金'),
            ],
          ),
        ),
      ],
    );
  }
}

class _Day extends StatelessWidget {
  const _Day({
    Key? key,
    required this.day,
  }) : super(key: key);

  final String day;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        day,
        textAlign: TextAlign.center,
      ),
    );
  }
}
