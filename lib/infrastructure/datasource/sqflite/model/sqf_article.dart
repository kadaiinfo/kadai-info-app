class SQFArticle {
  static const keyId = 'id';
  static const keyCreatedAt = 'created_at';
  static const keyIsFavorite = 'is_favorite';

  final String id;
  final DateTime createdAt;
  final bool isFavorite;

  SQFArticle({
    required this.id,
    required this.createdAt,
    required this.isFavorite,
  });

  /// データベースのデータから生成
  factory SQFArticle.fromMap(Map<String, dynamic> map) {
    return SQFArticle(
      id: map[keyId],
      createdAt: DateTime.fromMillisecondsSinceEpoch(map[keyCreatedAt]),
      isFavorite: map[keyIsFavorite] == 1,
    );
  }

  /// データベースに保存する際のデータに変換
  Map<String, dynamic> toMap() {
    return {
      keyId: id,
      keyCreatedAt: createdAt.millisecondsSinceEpoch,
      keyIsFavorite: isFavorite ? 1 : 0,
    };
  }
}
