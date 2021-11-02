import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/domain/entity/article/article.dart';
import 'package:kadai_info_flutter/domain/entity/article/article_collection.dart';
import 'package:kadai_info_flutter/domain/repository/i_article_repository.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/i_wordpress_datasource.dart';

class ArticleRepository implements IArticleRepository {
  ArticleRepository({required IWordpressDatasource wp}) : _wp = wp;

  final IWordpressDatasource _wp;

  @override
  Future<Result<Article>> deleteArticle(Article article) {
    // TODO: implement deleteArticle
    throw UnimplementedError();
  }

  @override
  Future<Result<ArticleCollection>> getArticlePage({
    required int page,
    required int per,
  }) async {
    final result = await _wp.postList();
    throw Exception();
    // return result.when(
    //   success: (data) {
    //     throw Exception();
    //   },
    //   failure: (error) {
    //     throw error;
    //   },
    // );
  }

  @override
  Future<Result<Article>> saveArticle(Article article) {
    // TODO: implement saveArticle
    throw UnimplementedError();
  }

  // Article _toArticle({required WPPost post, required WPAuthor author}) {
  //   final _author = ArticleAuthor(
  //     id: '${author.id}',
  //     name: author.name,
  //     thumbnailUrl: author.avatarUrl,
  //     link: author.link,
  //   );
  // }
}
