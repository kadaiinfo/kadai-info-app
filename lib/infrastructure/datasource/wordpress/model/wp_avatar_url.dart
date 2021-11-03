class WPAvatarUrl {
  final String url24;
  final String url48;
  final String url96;

  WPAvatarUrl.fromMap(Map<String, dynamic> map)
      : url24 = map['24'],
        url48 = map['48'],
        url96 = map['96'];
}
