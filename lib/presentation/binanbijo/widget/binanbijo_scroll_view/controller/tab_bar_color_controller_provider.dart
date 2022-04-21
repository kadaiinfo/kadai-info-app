// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_scroll_view/controller/tab_bar_color_controller.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_scroll_view/model/tab_bar_color_model.dart';

final tabBarColorControllerProvider =
    StateNotifierProvider.autoDispose<TabBarColorController, TabBarColorModel>(
        (ref) => TabBarColorController());
