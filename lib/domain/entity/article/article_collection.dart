import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kadai_info_flutter/domain/entity/article/article.dart';

part 'article_collection.freezed.dart';

@freezed
class ArticleCollection with _$ArticleCollection {
  const factory ArticleCollection({
    @Default([]) List<Article> articles,
    @Default(false) bool hasNext,
    @Default(false) bool hasPrevious,
  }) = _ArticleCollection;
}