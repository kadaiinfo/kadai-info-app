// Project imports:
import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/model/wp_post_list_response.dart';

abstract class IWordpressDatasource {
  /// 投稿一覧
  Future<WPPostListResponse> postList({
    int page = 1,
    int perPage = 10,
    List<String> categories = const [],
    List<String> categoriesExclude = const [],
    List<String> include = const [],
    List<String> tags = const [],
  });
}
