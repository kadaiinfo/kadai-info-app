import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/domain/entity/article/article.dart';
import 'package:kadai_info_flutter/domain/entity/article/article_author.dart';
import 'package:kadai_info_flutter/domain/entity/article/article_category.dart';
import 'package:kadai_info_flutter/domain/entity/article/article_collection.dart';
import 'package:kadai_info_flutter/domain/repository/article/i_article_repository.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/i_wordpress_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/model/wp_author.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/model/wp_post.dart';

class ArticleRepository implements IArticleRepository {
  ArticleRepository({required IWordpressDatasource wp}) : _wp = wp;

  final IWordpressDatasource _wp;

  @override
  Future<Result<Article>> deleteArticle(Article article) {
    // TODO: implement deleteArticle
    throw UnimplementedError();
  }

  @override
  Future<Result<ArticleCollection>> getArticleCollection({
    required int page,
    required int perPage,
    List<ArticleCategory> categories = const [],
  }) async {
    final result = await _wp.postList(
      page: page,
      perPage: perPage,
      categories: categories,
    );
    return result.when(
      success: (data) {
        final articles = data.body
            .map(
              (e) => _toArticle(post: e, author: e.embedded.authors.first),
            )
            .toList();
        final header = data.header;
        final hasNext = header.xWPTotalPages > page;
        final hasPrevious = page > 1;
        final collection = ArticleCollection(
          articles: articles,
          hasNext: hasNext,
          hasPrevious: hasPrevious,
        );
        return Result.success(collection);
      },
      failure: (error) {
        return Result.failure(error);
      },
    );
    final collection = ArticleCollection();
    // TODO: implement getArticlePage
    throw UnimplementedError();
  }

  @override
  Future<Result<Article>> saveArticle(Article article) {
    // TODO: implement saveArticle
    throw UnimplementedError();
  }

  Article _toArticle({required WPPost post, required WPAuthor author}) {
    final _author = ArticleAuthor(
      id: '${author.id}',
      name: author.name,
      thumbnailUrl: author.avatarUrl?.url48,
      link: author.link,
    );
    final _article = Article(
      id: '${post.id}',
      title: post.title.rendered,
      thumbnailUrl: post.embedded.medias.first.details.sizes.medium?.sourceUrl,
      link: post.link,
      author: _author,
      isFavorite: false,
      publishedAt: post.date,
    );
    return _article;
  }
}
