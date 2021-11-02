import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/model/wp_author.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/model/wp_feature_media.dart';

class WPEmbedded {
  /// 著者
  final List<WPAuthor> authors;

  /// メディア一覧
  final List<WPFeatureMedia> medias;

  WPEmbedded.fromMap(Map<String, dynamic> map)
      : authors =
            (map['author'] as List).map((e) => WPAuthor.fromMap(e)).toList(),
        medias = (map['wp:featuredmedia'] as List)
            .map((e) => WPFeatureMedia.fromMap(e))
            .toList();
}
