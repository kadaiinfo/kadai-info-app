// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/presentation/circle_genre/widget/circle_genre_list/circle_genre_list_controller.dart';
import 'package:kadai_info_flutter/presentation/circle_genre/widget/circle_genre_list/circle_genre_list_state.dart';

final circleGenreListControllerProvider = StateNotifierProvider.autoDispose<
    CircleGenreListController, CircleGenreListState>(
  (ref) => CircleGenreListController(),
);
