// Project imports:
import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/model/wp_media_info.dart';

class WPMediaSize {
  final WPMediaInfo? medium;
  final WPMediaInfo? large;
  final WPMediaInfo? full;

  WPMediaSize.fromMap(Map<String, dynamic> map)
      : medium =
            map['medium'] != null ? WPMediaInfo.fromMap(map['medium']) : null,
        large = map['large'] != null ? WPMediaInfo.fromMap(map['large']) : null,
        full = map['full'] != null ? WPMediaInfo.fromMap(map['full']) : null;
}
