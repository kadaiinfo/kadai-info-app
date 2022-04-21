// Project imports:
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_article.dart';

class SQFArticleTable {
  final List<SQFArticle> articles;
  final bool hasNext;
  final bool hasPrevious;

  SQFArticleTable({
    required this.articles,
    required this.hasNext,
    required this.hasPrevious,
  });
}
