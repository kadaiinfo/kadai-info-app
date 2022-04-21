// Project imports:
import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/model/wp_media_size.dart';

class WPMediaDetail {
  final WPMediaSize sizes;

  WPMediaDetail.fromMap(Map<String, dynamic> map)
      : sizes = WPMediaSize.fromMap(map['sizes']);
}
