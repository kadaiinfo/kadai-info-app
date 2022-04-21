// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/application/timetable/timetable_application.dart';

final timetableApplicationProvider = Provider<TimetableApplication>(
  (ref) => TimetableApplication(),
);
