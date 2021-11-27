import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/common/error_text/error_text.dart';
import 'package:kadai_info_flutter/presentation/common/loading_indicator/loading_indicator.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_day_list/timetable_day_list.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_lesson_item/timetable_lesson_item.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_lesson_list/timetable_lesson_list_controller_provider.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_period_list/timetable_period_list.dart';

/// 授業一覧
class TimetableLessonList extends StatelessWidget {
  const TimetableLessonList({
    Key? key,
    required this.year,
  }) : super(key: key);

  final int year;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            /// 曜日一覧
            const TimetableDayList(),
            IntrinsicHeight(
              child: Row(
                children: [
                  /// 時限一覧
                  const TimetablePeriodList(),

                  /// 授業コマ一覧
                  _Timetable(year: year),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Timetable extends ConsumerWidget {
  const _Timetable({
    Key? key,
    required this.year,
  }) : super(key: key);

  final int year;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(timetableLessonListControllerProvider(year));
    return Expanded(
      child: asyncValue.when(
        data: (data) {
          final year = data.year;
          return Column(
            children: [
              /// 1限目
              _LessonListRow(period: 0, year: year),

              /// 2限目
              _LessonListRow(period: 1, year: year),

              /// 3限目
              _LessonListRow(period: 2, year: year),

              /// 4限目
              _LessonListRow(period: 3, year: year),

              /// 5限目
              _LessonListRow(period: 4, year: year),
            ],
          );
        },
        error: (error, _) => ErrorText(error),
        loading: () => const LoadingIndicator(),
      ),
    );
  }
}

class _LessonListRow extends StatelessWidget {
  const _LessonListRow({
    Key? key,
    required this.period,
    required this.year,
  }) : super(key: key);

  final int period;
  final int year;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// 月
        TimetableLessonItem(
          period: period,
          day: 0,
          year: year,
        ),

        /// 火
        TimetableLessonItem(
          period: period,
          day: 1,
          year: year,
        ),

        /// 水
        TimetableLessonItem(
          period: period,
          day: 2,
          year: year,
        ),

        /// 木
        TimetableLessonItem(
          period: period,
          day: 3,
          year: year,
        ),

        /// 金
        TimetableLessonItem(
          period: period,
          day: 4,
          year: year,
        ),
      ],
    );
  }
}
