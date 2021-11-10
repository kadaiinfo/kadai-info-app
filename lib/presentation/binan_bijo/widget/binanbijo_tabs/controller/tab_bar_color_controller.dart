import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/binan_bijo/widget/binanbijo_tabs/model/tab_bar_color_model.dart';

class TabBarColorController extends StateNotifier<TabBarColorModel> {
  TabBarColorController() : super(TabBarColorModel());

  void onTap(int index) {
    _changeColor(index);
  }

  void _changeColor(int index) {
    if (index == 0) {
      state = TabBarColorModel(
          girlsColor: TabBarColorModel.bbsGirls,
          boysColor: TabBarColorModel.grey,
          indicatorColor: TabBarColorModel.bbsGirls);
    } else if (index == 1) {
      state = TabBarColorModel(
          girlsColor: TabBarColorModel.grey,
          boysColor: TabBarColorModel.bbsBoys,
          indicatorColor: TabBarColorModel.bbsBoys);
    }
  }
}
