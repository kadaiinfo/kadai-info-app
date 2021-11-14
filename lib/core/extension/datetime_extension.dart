extension DateTimeExtension on DateTime {
  /// ドット表記
  String get toDot {
    final year = this.year;
    final month = this.month;
    final day = this.day;

    return '$year.$month.$day';
  }
}
