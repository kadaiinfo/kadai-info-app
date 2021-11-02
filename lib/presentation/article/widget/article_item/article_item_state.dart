import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kadai_info_flutter/domain/entity/article/article.dart';

part 'article_item_state.freezed.dart';

@freezed
class ArticleItemState with _$ArticleItemState {
  const factory ArticleItemState._({
    required String title,
    required String thumbnailUrl,
    required String publishedAt,
    required String authorName,
    required String authorThumbnailUrl,
    required String link,
    required String authorLink,
    required bool isFavorite,
  }) = _ArticleItemState;

  /// エンティティから生成
  factory ArticleItemState.from(Article article) {
    final author = article.author;
    return ArticleItemState._(
      title: article.title,
      thumbnailUrl: article.thumbnailUrl,
      publishedAt: article.publishedAt.japanese,
      authorName: author.name,
      authorThumbnailUrl: author.thumbnailUrl,
      link: article.link,
      authorLink: author.link,
      isFavorite: article.isFavorite,
    );
  }
}

extension _DateTimeExtension on DateTime {
  String get japanese {
    final year = this.year;
    final month = this.month;
    final day = this.day;

    return '$year年$month月$day日';
  }
}
