import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/domain/entity/article/article_category.dart';
import 'package:kadai_info_flutter/domain/entity/article/article_collection.dart';
import 'package:kadai_info_flutter/domain/entity/article/article_favorite.dart';

abstract class IArticleRepository {
  /// 記事ページの取得
  Future<Result<ArticleCollection>> getArticleCollection({
    required int page,
    required int perPage,
    List<ArticleCategory> categories = const [],
    List<String> include = const [],
  });

  /// 記事の保存
  Future<Result<ArticleFavorite>> saveArticle(String articleId);

  /// 記事の削除
  Future<Result<ArticleFavorite>> deleteArticle(String articleId);
}
