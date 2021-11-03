import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/domain/entity/article/article.dart';
import 'package:kadai_info_flutter/domain/entity/article/article_category.dart';
import 'package:kadai_info_flutter/domain/entity/article/article_collection.dart';

abstract class IArticleRepository {
  /// 記事ページの取得
  Future<Result<ArticleCollection>> getArticleCollection({
    required int page,
    required int perPage,
    List<ArticleCategory> categories = const [],
  });

  /// 記事の保存
  Future<Result<Article>> saveArticle(Article article);

  /// 記事の削除
  Future<Result<Article>> deleteArticle(Article article);
}
