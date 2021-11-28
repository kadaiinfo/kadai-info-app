import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timetable_edit_color_dialog_state.freezed.dart';

@freezed
class TimetableEditColorDialogState with _$TimetableEditColorDialogState {
  const factory TimetableEditColorDialogState({
    required Color selectedColor,
    @Default([
      0xFFDDDDDD,
      0xFFAAAAAA,
      0xFF888888,
      0xFF555555,
      0xFFF06292,
      0xFFE57373,
      0xFFFF8A65,
      0xFFFFB74D,
      0xFFFFD54F,
      0xFFFFF176,
      0xFFDCE775,
      0xFFAED581,
      0xFF81C784,
      0xFF4DB6AC,
      0xFF4DD0E1,
      0xFF4FC3F7,
      0xFF64B5F6,
      0xFF7986CB,
      0xFF9575CD,
      0xFFBA68C8,
    ])
        List<int> colors,
  }) = _TimetableEditColorDialogState;
}
