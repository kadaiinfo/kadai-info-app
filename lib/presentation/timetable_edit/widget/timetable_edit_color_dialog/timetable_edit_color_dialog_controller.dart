import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/timetable_edit/widget/timetable_edit_color_form/timetable_edit_color_form_controller_provider.dart';

import 'timetable_edit_color_dialog_state.dart';

class TimetableEditColorDialogController
    extends StateNotifier<TimetableEditColorDialogState> {
  TimetableEditColorDialogController(
    TimetableEditColorDialogState state, {
    required this.reader,
  }) : super(state);

  final Reader reader;

  /// 色の変更
  Future<void> selectColor(Color color) async {
    reader(timetableEditColorFormControllerProvider.notifier)
        .changeColor(color);
  }
}
