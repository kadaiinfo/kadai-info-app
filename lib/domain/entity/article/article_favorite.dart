class ArticleFavorite {
  final String articleId;
  final bool isFavorite;
  final DateTime createdAt;

  ArticleFavorite({
    required this.articleId,
    required this.createdAt,
    required this.isFavorite,
  });
}
