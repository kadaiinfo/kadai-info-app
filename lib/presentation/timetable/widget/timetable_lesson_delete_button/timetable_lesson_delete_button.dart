import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_lesson_delete_button/timetable_lesson_delete_button_controller_provider.dart';

class TimetableLessonDeleteButton extends ConsumerWidget {
  const TimetableLessonDeleteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final text = ref.watch(timetableLessonDeleteButtonControllerProvider).text;
    final isConfirmed =
        ref.watch(timetableLessonDeleteButtonControllerProvider).isConfirmed;
    final controller =
        ref.read(timetableLessonDeleteButtonControllerProvider.notifier);
    return Expanded(
      child: ElevatedButton(
        onPressed: () async {
          if (isConfirmed) {
            await controller.deleteLesson();
            Navigator.pop(context); // ダイアログを閉じる
          } else {
            await controller.showConfirmText();
          }
        },
        child: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
