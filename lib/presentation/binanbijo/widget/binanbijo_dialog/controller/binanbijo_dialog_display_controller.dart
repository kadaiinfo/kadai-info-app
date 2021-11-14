import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_dialog/model/binanbijo_dialog_display_model.dart';

class BinanbijoDialogDisplayController
    extends StateNotifier<AsyncValue<BinanbijoDialogDisplayModel>> {
  BinanbijoDialogDisplayController() : super(const AsyncLoading()) {
    init();
  }

  // 初期状態
  void init() {
    state = const AsyncData(BinanbijoDialogDisplayModel.choiceUser());
  }

  // ユーザー選択画面で選択
  void choiceUser() {
    state = const AsyncData(BinanbijoDialogDisplayModel.vote());
  }

  // 投票画面
  void vote() {
    state = const AsyncData(BinanbijoDialogDisplayModel.voted());
  }
}
