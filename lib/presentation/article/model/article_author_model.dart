import 'package:kadai_info_flutter/domain/entity/article/article_author.dart';

class ArticleAuthorModel {
  final String id;
  final String name;
  final String? thumbnailUrl;
  final String link;

  ArticleAuthorModel._({
    required this.id,
    required this.name,
    required this.thumbnailUrl,
    required this.link,
  });

  factory ArticleAuthorModel.from(ArticleAuthor author) {
    return ArticleAuthorModel._(
      id: author.id,
      name: author.name,
      thumbnailUrl: author.thumbnailUrl,
      link: author.link,
    );
  }
}
