import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/domain/entity/article/article_category.dart';
import 'package:kadai_info_flutter/domain/entity/article/article_collection.dart';
import 'package:kadai_info_flutter/domain/repository/article/i_article_repository.dart';

class ArticleApplication {
  ArticleApplication(this._repository);

  final IArticleRepository _repository;
  Future<Result<ArticleCollection>> getArticleList({
    required int page,
    required int perPage,
    List<ArticleCategory> categories = const [],
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
}
