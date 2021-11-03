import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_article.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_article_table.dart';

abstract class ISqfliteDatasource {
  /// 記事一覧
  Future<Result<SQFArticleTable>> articles({
    required int limit,
    required int offset,
  });

  /// 記事
  Future<Result<SQFArticle>> article(String id);
}
