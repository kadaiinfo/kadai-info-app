// Package imports:
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';

enum AnalyticsEvent { button, banner, scan }

class FirebaseAnalyticsService {
  static final FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics();
  static final FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: firebaseAnalytics);

  Future<void> sendEvent(
      {required AnalyticsEvent event,
      required Map<String, dynamic> parameterMap}) async {
    final eventName = event.toString().split('.')[1];
    firebaseAnalytics.logEvent(name: eventName, parameters: parameterMap);
  }
}
