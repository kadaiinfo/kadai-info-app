import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/domain/entity/article/article_category.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/model/wp_post.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/model/wp_post_list_response.dart';

abstract class IWordpressDatasource {
  /// 投稿一覧
  Future<Result<WPPostListResponse>> postList({
    int page = 1,
    int perPage = 10,
    List<ArticleCategory> categories = const [],
    List<int> categoriesExclude = const [],
    List<String> include = const [],
  });

  /// 投稿
  Future<Result<WPPost>> post({
    required String articleId,
  });
}
