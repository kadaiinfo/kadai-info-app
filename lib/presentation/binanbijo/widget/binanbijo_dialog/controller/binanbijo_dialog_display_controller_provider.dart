import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_dialog/controller/binanbijo_dialog_display_controller.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_dialog/model/binanbijo_dialog_display_model.dart';

final binanbijoDialogDisplayControllerProvider =
    StateNotifierProvider.autoDispose<BinanbijoDialogDisplayController,
            AsyncValue<BinanbijoDialogDisplayModel>>(
        (ref) => BinanbijoDialogDisplayController());
