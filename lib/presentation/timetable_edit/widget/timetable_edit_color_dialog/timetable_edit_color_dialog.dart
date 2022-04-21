// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/presentation/common/circle_button/circle_button.dart';
import 'package:kadai_info_flutter/presentation/timetable_edit/widget/timetable_edit_color_dialog/timetable_edit_color_dialog_controller_provider.dart';

class TimetableEditColorDialog extends ConsumerWidget {
  const TimetableEditColorDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller =
        ref.read(timetableEditColorDialogControllerProvider.notifier);
    final colors = ref.read(timetableEditColorDialogControllerProvider).colors;
    return AlertDialog(
      title: const Text(
        '科目カラー',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      content: SizedBox(
        width: double.maxFinite,
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 4,
          crossAxisSpacing: 30,
          mainAxisSpacing: 30,
          children: List.generate(
            colors.length,
            (index) {
              final color = Color(colors[index]);
              return CircleButton(
                color: color,
                onTap: () async {
                  await controller.selectColor(color);
                  Navigator.of(context).pop();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
