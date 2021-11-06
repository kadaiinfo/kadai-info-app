import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/domain/entity/article/article.dart';
import 'package:kadai_info_flutter/domain/entity/article/article_author.dart';
import 'package:kadai_info_flutter/domain/entity/article/article_category.dart';
import 'package:kadai_info_flutter/domain/entity/article/article_collection.dart';
import 'package:kadai_info_flutter/domain/entity/article/article_favorite.dart';
import 'package:kadai_info_flutter/domain/repository/article/i_article_repository.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/i_sqflite_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/i_wordpress_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/model/wp_post.dart';

class ArticleRepository implements IArticleRepository {
  ArticleRepository({
    required this.wp,
    required this.sqf,
  });

  final IWordpressDatasource wp;
  final ISqfliteDatasource sqf;

  @override
  Future<Result<ArticleFavorite>> deleteArticle(String articleId) async {
    final result = await sqf.deleteArticle(articleId);
    return result.when(
      success: (data) {
        return Result.success(ArticleFavorite(
          articleId: data.id,
          createdAt: data.createdAt,
          isFavorite: data.isFavorite,
        ));
      },
      failure: (error) {
        return Result.failure(Exception(error));
      },
    );
  }

  @override
  Future<Result<ArticleCollection>> getArticleCollection({
    required int page,
    required int perPage,
    List<ArticleCategory> categories = const [],
    List<String> include = const [],
  }) async {
    final result = await wp.postList(
      page: page,
      perPage: perPage,
      categories: categories,
    );
    return result.when(
      success: (data) {
        final articles = data.body.map((e) => _toArticle(post: e)).toList();
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
  }

  @override
  Future<Result<ArticleFavorite>> saveArticle(String articleId) async {
    final result = await sqf.saveArticle(articleId);
    return result.when(
      success: (data) {
        final favorite = ArticleFavorite(
          articleId: articleId,
          createdAt: data.createdAt,
          isFavorite: data.isFavorite,
        );
        return Result.success(favorite);
      },
      failure: (error) {
        return Result.failure(Exception(error));
      },
    );
  }

  Article _toArticle({required WPPost post}) {
    final author = post.embedded.authors.first;
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
