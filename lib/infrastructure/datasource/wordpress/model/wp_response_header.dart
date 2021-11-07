class WPResponseHeader {
  final int xWPTotal;
  final int xWPTotalPages;
  final String link;

  WPResponseHeader.fromMap(Map<String, List<String>> map)
      : xWPTotal = int.parse(map['X-WP-Total']![0]),
        xWPTotalPages = int.parse(map['X-WP-TotalPages']![0]),
        link = map['link']![0];
}
