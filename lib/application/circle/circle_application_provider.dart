// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/application/circle/circle_application.dart';

final circleApplication = Provider(
  (ref) => CircleApplication(),
);
