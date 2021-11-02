import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/model/wp_media_detail.dart';

class WPFeatureMedia {
  final WPMediaDetail details;

  WPFeatureMedia.fromMap(Map<String, dynamic> map)
      : details = WPMediaDetail.fromMap(map['media_details']);
}
