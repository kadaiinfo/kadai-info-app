class McPicture {
  // URL
  final String url;
  // 高さ
  final int height;
  // 幅
  final int width;

  McPicture.fromMap(Map<String, dynamic> map)
    : url = map['url'],
      height = map['height'],
      width = map['width'];
}