import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_author.freezed.dart';

@freezed
class ArticleAuthor with _$ArticleAuthor {
  const factory ArticleAuthor({
    required String id,
    required String name,
    required String? thumbnailUrl,
    required String link,
  }) = _ArticleAuthor;
}
