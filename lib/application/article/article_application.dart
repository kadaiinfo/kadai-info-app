import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/domain/entity/article/article.dart';
import 'package:kadai_info_flutter/domain/entity/article/article_category.dart';
import 'package:kadai_info_flutter/domain/entity/article/article_collection.dart';
import 'package:kadai_info_flutter/domain/repository/article/i_article_repository.dart';

class ArticleApplication {
  ArticleApplication(this._repository);

  final IArticleRepository _repository;

  /// 記事一覧の取得
  Future<Result<ArticleCollection>> getArticleList({
    required int page,
    required int perPage,
    List<ArticleCategory> categories = const [],
    List<String> articleIds = const [],
  }) async {
    final result = await _repository.getArticleCollection(
      page: page,
      perPage: perPage,
      categories: categories,
    );
    return result.when(
      success: (data) {
        return Result.success(data);
      },
      failure: (error) {
        return Result.failure(error);
      },
    );
  }

  /// 記事のお気に入り登録
  Future<Result<Article>> favoriteArticle(String articleId) async {
    throw Exception();
  }

  /// 記事のお気に入り解除
  Future<Result<Article>> releaseArticle(String articleId) async {
    throw Exception();
  }

  /// お気に入り記事一覧の取得
  Future<Result<ArticleCollection>> getFavoriteArticleList({
    required List<String> articleIds,
    required int page,
    required int perPage,
  }) async {
    final result = await getArticleList(
      page: page,
      perPage: perPage,
      articleIds: articleIds,
    );
    return result.when(
      success: (data) {
        return Result.success(data);
      },
      failure: (error) {
        return Result.failure(Exception(error));
      },
    );
  }
}
