import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/model/wp_avatar_url.dart';

class WPAuthor {
  /// ID
  final int id;

  /// 名前
  final String name;

  /// 概要
  final String description;

  /// プロフィールURL
  final String link;

  /// アイコン画像
  final WPAvatarUrl? avatarUrl;

  WPAuthor.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        name = map['name'],
        description = map['description'],
        link = map['link'],
        avatarUrl = WPAvatarUrl.fromMap(map['avatar_urls']);
}
