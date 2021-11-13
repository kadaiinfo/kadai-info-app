class DateTimeUtil {
  /// 今年度であるか
  static bool isThisSchoolYear(DateTime date) {
    final now = DateTime.now();
    return ((date.year == now.year && date.month >= 4 && date.month <= 12) ||
        (now.year - date.year == 1 && date.month >= 1 && date.month <= 3));
  }
}
