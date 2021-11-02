class WPMediaInfo {
  final String sourceUrl;

  WPMediaInfo.fromMap(Map<String, dynamic> map) : sourceUrl = map['source_url'];
}
