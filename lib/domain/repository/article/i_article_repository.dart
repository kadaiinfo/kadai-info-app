// Project imports:
import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/domain/entity/article/article_category.dart';
import 'package:kadai_info_flutter/domain/entity/article/article_collection.dart';
import 'package:kadai_info_flutter/domain/entity/article/article_favorite.dart';

abstract class IArticleRepository {
  /// 記事一覧の取得
  Future<Result<ArticleCollection>> getArticleCollection({
    required int page,
    required int perPage,
    List<ArticleCategory> categories = const [],
    List<String> include = const [],
    bool isFavorite = false,
  });

  /// 記事の保存
  Future<Result<ArticleFavorite>> saveArticle(String articleId);

  /// 記事の削除
  Future<Result<ArticleFavorite>> deleteArticle(String articleId);

  /// お気に入り記事の取得
  Future<Result<ArticleFavorite>> getFavorite(String articleId);
}
