// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:kadai_info_flutter/core/util/navigator_util.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_lesson_delete_button/timetable_lesson_delete_button.dart';
import 'package:kadai_info_flutter/presentation/timetable_edit/timetable_edit_page.dart';

class TimetableLessonDialog extends StatelessWidget {
  const TimetableLessonDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            '金曜日：1限目',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          const Text(
            '情報生態システム工学研究Ⅰ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  child: const Text('編集'),
                  onPressed: () {
                    NavigatorUtil.push(
                      context: context,
                      page: const TimetableEditPage(),
                    );
                  },
                ),
              ),
              const SizedBox(width: 10),
              const TimetableLessonDeleteButton(),
            ],
          ),
          const Divider(),
          Column(
            children: const [
              Text(
                '教室：未設定',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Text(
                '教師：未設定',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(); // ダイアログを閉じる
          },
          child: const Text('閉じる'),
        ),
      ],
    );
  }
}
