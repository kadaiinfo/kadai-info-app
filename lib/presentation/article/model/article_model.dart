// Package imports:
import 'package:equatable/equatable.dart';

// Project imports:
import 'package:kadai_info_flutter/core/extension/datetime_extension.dart';
import 'package:kadai_info_flutter/domain/entity/article/article.dart';
import 'package:kadai_info_flutter/presentation/article/model/article_author_model.dart';

class ArticleModel extends Equatable {
  final String id;
  final String title;
  final String publishedAt;
  final String? thumbnailUrl;
  final ArticleAuthorModel author;
  final String link;

  const ArticleModel._({
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
      publishedAt: article.publishedAt.toDot,
      thumbnailUrl: article.thumbnailUrl,
      author: ArticleAuthorModel.from(article.author),
      link: article.link,
    );
  }

  @override
  List<Object?> get props => [id];
}
