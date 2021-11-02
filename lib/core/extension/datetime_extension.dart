extension DateTimeExtension on DateTime {
  String get dot {
    final year = this.year;
    final month = this.month;
    final day = this.day;

    return '$year.$month.$day';
  }
}
