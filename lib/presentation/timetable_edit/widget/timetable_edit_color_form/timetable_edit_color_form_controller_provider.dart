// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/presentation/timetable_edit/widget/timetable_edit_color_form/timetable_edit_color_form_controller.dart';
import 'package:kadai_info_flutter/presentation/timetable_edit/widget/timetable_edit_color_form/timetable_edit_color_form_state.dart';

final timetableEditColorFormControllerProvider = StateNotifierProvider
    .autoDispose<TimetableEditColorFormController, TimetableEditColorFormState>(
  (ref) {
    const _state =
        TimetableEditColorFormState(selectedColor: Colors.blue);
    return TimetableEditColorFormController(_state);
  },
);
