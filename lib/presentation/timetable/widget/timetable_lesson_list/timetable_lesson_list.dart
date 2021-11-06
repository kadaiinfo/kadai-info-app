import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_day_list/timetable_day_list.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_lesson_item/timetable_lesson_item.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_period_list/timetable_period_list.dart';

/// 授業一覧
class TimetableLessonList extends StatelessWidget {
  const TimetableLessonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// 曜日一覧
        const TimetableDayList(),
        IntrinsicHeight(
          child: Row(
            children: const [
              /// 時限一覧
              TimetablePeriodList(),

              /// 授業コマ一覧
              _Timetable(),
            ],
          ),
        ),
      ],
    );
  }
}

class _Timetable extends StatelessWidget {
  const _Timetable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: const [
          /// 1限目
          _LessonListRow(),

          /// 2限目
          _LessonListRow(),

          /// 3限目
          _LessonListRow(),

          /// 4限目
          _LessonListRow(),

          /// 5限目
          _LessonListRow(),

          /// 6限目
          _LessonListRow(),
        ],
      ),
    );
  }
}

class _LessonListRow extends StatelessWidget {
  const _LessonListRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        /// 月
        TimetableLessonItem(),

        /// 火
        TimetableLessonItem(),

        /// 水
        TimetableLessonItem(),

        /// 木
        TimetableLessonItem(),

        /// 金
        TimetableLessonItem(),
      ],
    );
  }
}
