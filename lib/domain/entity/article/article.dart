// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:kadai_info_flutter/domain/entity/article/article_author.dart';

part 'article.freezed.dart';

@freezed
class Article with _$Article {
  factory Article({
    required String id,
    required String title,
    required String? thumbnailUrl,
    required String link,
    required ArticleAuthor author,
    required DateTime publishedAt,
  }) = _Article;
}
