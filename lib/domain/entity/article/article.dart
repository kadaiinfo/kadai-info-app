import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kadai_info_flutter/domain/entity/article/article_author.dart';

part 'article.freezed.dart';

@freezed
class Article with _$Article {
  const factory Article({
    required String id,
    required String title,
    required String thumbnailUrl,
    required String link,
    required ArticleAuthor author,
    required bool isFavorite,
    required DateTime publishedAt,
    required ArticleCategory category,
  }) = _Article;
}

enum ArticleCategory {
  /// 新着
  latest,

  /// SNAP
  snap,

  /// インタビュー
  interview,

  /// やってみた
  challenge,

  /// グルメ
  gourmet,

  /// おでかけ
  outdoor,

  /// エンタメ
  entertainment,

  /// 就職
  recruit,
}
