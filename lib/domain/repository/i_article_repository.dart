import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/domain/entity/article/article.dart';
import 'package:kadai_info_flutter/domain/entity/article/article_collection.dart';

abstract class IArticleRepository {
  /// 記事ページの取得
  Future<Result<ArticleCollection>> getArticlePage({
    required int page,
    required int per,
  });

  /// 記事の保存
  Future<Result<Article>> saveArticle(Article article);

  /// 記事の削除
  Future<Result<Article>> deleteArticle(Article article);
}
