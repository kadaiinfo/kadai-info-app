class GASAdsenseBanner {
  static const keyLink = 'url';
  static const keyImageUrl = 'image';

  /// 広告先リンク
  final String link;

  /// 画像URL
  final String imageUrl;

  GASAdsenseBanner({
    required this.link,
    required this.imageUrl,
  });

  factory GASAdsenseBanner.from(Map<String, dynamic> map) {
    return GASAdsenseBanner(
      link: map[keyLink],
      imageUrl: map[keyImageUrl],
    );
  }
}
