import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/application/binanbijo/binanbijo_application.dart';
import 'package:kadai_info_flutter/infrastructure/repository/binanbijo/binanbijo_repository_provider.dart';

final binanbijoApplicationProvider = Provider(
    (ref) => BinanbijoApplication(ref.read(binanbijoRepositoryProvider)));
