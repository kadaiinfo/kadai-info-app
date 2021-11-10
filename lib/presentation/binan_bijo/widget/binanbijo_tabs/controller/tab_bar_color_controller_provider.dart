import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/binan_bijo/widget/binanbijo_tabs/controller/tab_bar_color_controller.dart';
import 'package:kadai_info_flutter/presentation/binan_bijo/widget/binanbijo_tabs/model/tab_bar_color_model.dart';

final tabBarColorControllerProvider =
    StateNotifierProvider.autoDispose<TabBarColorController, TabBarColorModel>(
        (ref) => TabBarColorController());
