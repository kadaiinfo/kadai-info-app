import 'package:kadai_info_flutter/core/util/datetime_util.dart';
import 'package:kadai_info_flutter/domain/entity/article/article.dart';
import 'package:kadai_info_flutter/presentation/article/model/article_author_model.dart';

class ArticleModel {
  final String id;
  final String title;
  final String publishedAt;
  final String? thumbnailUrl;
  final ArticleAuthorModel author;
  final String link;

  ArticleModel._({
    required this.id,
    required this.title,
    required this.publishedAt,
    required this.thumbnailUrl,
    required this.author,
    required this.link,
  });

  factory ArticleModel.from(Article article) {
    return ArticleModel._(
      id: article.id,
      title: article.title,
      publishedAt: DateTimeUtil.toDot(article.publishedAt),
      thumbnailUrl: article.thumbnailUrl,
      author: ArticleAuthorModel.from(article.author),
      link: article.link,
    );
  }
}
