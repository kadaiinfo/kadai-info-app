import 'package:equatable/equatable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/application/timetable/timetable_application.dart';

import 'timetable_lesson_item_state.dart';

class TimetableLessonItemController
    extends StateNotifier<TimetableLessonItemState> {
  TimetableLessonItemController({
    required this.app,
    required this.period,
    required this.day,
    required this.year,
    required TimetableLessonItemState state,
  }) : super(state) {
    _fetch();
  }

  final TimetableApplication app;
  final int year;
  final int day;
  final int period;

  Future<void> _fetch() async {}

  /// コマの更新
  void updateLesson() {}
}

class TimetableLessonItemArgument extends Equatable {
  final int year;
  final int day;
  final int period;

  const TimetableLessonItemArgument({
    required this.period,
    required this.day,
    required this.year,
  });

  @override
  List<Object?> get props => [year, day, period];
}
