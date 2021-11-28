import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timetable_edit_color_form_state.freezed.dart';

@freezed
class TimetableEditColorFormState with _$TimetableEditColorFormState {
  const factory TimetableEditColorFormState({
    required Color selectedColor,
  }) = _TimetableEditColorFormState;
}
