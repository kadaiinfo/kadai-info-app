import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/model/wp_media_info.dart';

class WPMediaSize {
  final WPMediaInfo? medium;
  final WPMediaInfo? large;
  final WPMediaInfo? full;

  WPMediaSize.fromMap(Map<String, dynamic> map)
      : medium = WPMediaInfo.fromMap(map['medium']),
        large = WPMediaInfo.fromMap(map['large']),
        full = WPMediaInfo.fromMap(map['full']);
}
