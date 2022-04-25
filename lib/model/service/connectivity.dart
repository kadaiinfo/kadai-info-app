import 'package:connectivity/connectivity.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final connectivityStreamService = StreamProvider((ref) async* {
  final stream = Connectivity().onConnectivityChanged;
  await for (final event in stream) {
    if(event == ConnectivityResult.none) {
      yield false;
    } else {
      yield true;
    }
  }
});