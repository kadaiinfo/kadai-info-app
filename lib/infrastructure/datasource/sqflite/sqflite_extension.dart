extension DateTimeExt on DateTime {
  int get toInt {
    return millisecondsSinceEpoch;
  }
}

extension IntExt on int {
  DateTime get toDateTime {
    return DateTime.fromMicrosecondsSinceEpoch(this);
  }
}
