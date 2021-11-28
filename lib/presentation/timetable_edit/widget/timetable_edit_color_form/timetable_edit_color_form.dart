import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/common/circle_button/circle_button.dart';
import 'package:kadai_info_flutter/presentation/timetable_edit/widget/timetable_edit_color_dialog/timetable_edit_color_dialog.dart';
import 'package:kadai_info_flutter/presentation/timetable_edit/widget/timetable_edit_color_form/timetable_edit_color_form_controller_provider.dart';

class TimetableEditColorForm extends ConsumerWidget {
  const TimetableEditColorForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedColor =
        ref.watch(timetableEditColorFormControllerProvider).selectedColor;
    return CircleButton(
      color: selectedColor,
      onTap: () async {
        await showDialog(
          context: context,
          builder: (context) {
            return const TimetableEditColorDialog();
          },
        );
      },
    );
  }
}
