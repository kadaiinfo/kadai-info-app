// Dart imports:
import 'dart:io';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nfc_manager/nfc_manager.dart';

// Project imports:
import 'package:kadai_info_flutter/application/binanbijo/binanbijo_application.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_dialog/controller/binanbijo_dialog_display_controller_provider.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_scroll_view/model/binanbijo_is_student_model.dart';

class BinanbijoIsStudentController
    extends StateNotifier<BinanbijoIsStudentModel> {
  BinanbijoIsStudentController({required this.app, required this.reader})
      : super(BinanbijoIsStudentModel()) {
    Future(() async {
      await init();
    });
  }

  final BinanbijoApplication app;
  final Reader reader;

  Future<void> init() async {
    _checkAvailable();
  }

  /// NFCに対応しているかチェックする
  Future<void> _checkAvailable() async {
    final isAvailable = await NfcManager.instance.isAvailable();
    state = BinanbijoIsStudentModel(isAvailable: isAvailable);
  }

  // 学生証を読み取る
  Future<void> scan() async {
    // TODO: androidだけ落ちる
    if(Platform.isIOS) await NfcManager.instance.stopSession();
    final _displayController =
        reader(binanbijoDialogDisplayControllerProvider.notifier);
    // 次の画面へ
    if (state.isStudent) {
      _displayController.choiceUser();
      return;
    }
    // 端末が対応していません
    if (!state.isAvailable) {
      _displayController.cantVote();
      return;
    }
    await NfcManager.instance.startSession(
        onDiscovered: (tag) async {
          final result = await app.getUnivCard(tag);
          await NfcManager.instance.stopSession();
          // ダイアログ切り替え
          if (result) {
            state = BinanbijoIsStudentModel(isAvailable: true, isStudent: true);
            _displayController.choiceUser();
          } else {
            _displayController.cantVote();
          }
        },
        alertMessage: '学生証をかざしてください');
  }
}
