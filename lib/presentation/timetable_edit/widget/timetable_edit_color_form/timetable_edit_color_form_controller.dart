// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/presentation/timetable_edit/widget/timetable_edit_color_form/timetable_edit_color_form_state.dart';

class TimetableEditColorFormController
    extends StateNotifier<TimetableEditColorFormState> {
  TimetableEditColorFormController(TimetableEditColorFormState state)
      : super(state);

  /// 色の変更
  void changeColor(Color color) {
    state = state.copyWith(selectedColor: color);
  }
}
