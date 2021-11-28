import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/timetable_edit/widget/timetable_edit_color_form/timetable_edit_color_form_controller.dart';
import 'package:kadai_info_flutter/presentation/timetable_edit/widget/timetable_edit_color_form/timetable_edit_color_form_state.dart';

final timetableEditColorFormControllerProvider = StateNotifierProvider
    .autoDispose<TimetableEditColorFormController, TimetableEditColorFormState>(
  (ref) {
    final _state =
        TimetableEditColorFormState(selectedColor: Colors.blue); // TODO: 初期値の指定
    return TimetableEditColorFormController(_state);
  },
);
