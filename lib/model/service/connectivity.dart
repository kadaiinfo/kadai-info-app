import 'package:connectivity/connectivity.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final connectivityService = FutureProvider((ref) async {
  final result = await Connectivity().checkConnectivity();
  if(result == ConnectivityResult.none) {
    return false;
  } else {
    return true;
  }
});