import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_lesson_dialog/timetable_lesson_dialog.dart';

/// 授業コマ
class TimetableLessonItem extends StatelessWidget {
  const TimetableLessonItem({
    Key? key,
    required this.period,
    required this.day,
    required this.year,
  }) : super(key: key);

  final int day;
  final int period;
  final int year;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: AspectRatio(
          aspectRatio: 1 / 1.2,
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFDDDDDD),
            ),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return TimetableLessonDialog();
                  },
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Text(
                    '情報生態システム工学実験Ⅰ',
                    style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                  ),
                  Text(
                    '教室',
                    style: TextStyle(
                      fontSize: 7,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
