// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/application/binanbijo/binanbijo_application_provider.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_scroll_view/controller/binanbijo_is_student_controller.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_scroll_view/model/binanbijo_is_student_model.dart';

final binanbijoIsStudentControllerProvider = StateNotifierProvider.autoDispose<
        BinanbijoIsStudentController, BinanbijoIsStudentModel>(
    (ref) => BinanbijoIsStudentController(
        app: ref.read(binanbijoApplicationProvider), reader: ref.read));
