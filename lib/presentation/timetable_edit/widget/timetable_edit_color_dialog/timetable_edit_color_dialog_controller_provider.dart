// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/presentation/timetable_edit/widget/timetable_edit_color_dialog/timetable_edit_color_dialog_controller.dart';
import 'timetable_edit_color_dialog_state.dart';

final timetableEditColorDialogControllerProvider = StateNotifierProvider<
    TimetableEditColorDialogController, TimetableEditColorDialogState>(
  (ref) {
    const _state = TimetableEditColorDialogState(
        selectedColor: Colors.blue);
    return TimetableEditColorDialogController(
      _state,
      reader: ref.read,
    );
  },
);
