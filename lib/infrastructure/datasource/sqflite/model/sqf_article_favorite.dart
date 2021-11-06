class SQFArticleFavorite {
  final String articleId;
  final bool isFavorite;
  final DateTime createdAt;

  SQFArticleFavorite({
    required this.isFavorite,
    required this.createdAt,
    required this.articleId,
  });
}
