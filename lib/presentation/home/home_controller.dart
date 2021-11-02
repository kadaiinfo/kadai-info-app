import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/home/home_state.dart';

final homeController = StateNotifierProvider<HomeController, HomeState>(
  (ref) => HomeController(),
);

class HomeController extends StateNotifier<HomeState> {
  HomeController() : super(const HomeState());

  /// タブの選択
  void selectTab(int index) {
    state = state.copyWith(currentIndex: index);
  }
}
