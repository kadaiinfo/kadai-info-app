// Project imports:
import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/domain/entity/article/article_collection.dart';

abstract class GetArticleListUseCase {
  Future<Result<ArticleCollection>> execute();
}
