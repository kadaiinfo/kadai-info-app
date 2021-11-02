import 'package:hooks_riverpod/hooks_riverpod.dart';

final splashController = Provider<SplashController>(
  (ref) => SplashController(),
);

class SplashController {
  Future<void> setup() async {
    await Future.wait([
      Future.delayed(Duration(seconds: 1)),
    ]);
  }
}
