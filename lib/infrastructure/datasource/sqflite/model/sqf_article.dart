class SQFArticle {
  static const keyId = 'id';
  static const keyCreatedAt = 'created_at';

  final String id;
  final DateTime createdAt;

  SQFArticle({
    required this.id,
    required this.createdAt,
  });

  /// データベースのデータから生成
  factory SQFArticle.fromMap(Map<String, dynamic> map) {
    return SQFArticle(
      id: map[keyId],
      createdAt: DateTime.fromMillisecondsSinceEpoch(map[keyCreatedAt]),
    );
  }

  /// データベースに保存する際のデータに変換
  Map<String, dynamic> toMap() {
    return {
      keyId: id,
      keyCreatedAt: createdAt.millisecondsSinceEpoch,
    };
  }
}
