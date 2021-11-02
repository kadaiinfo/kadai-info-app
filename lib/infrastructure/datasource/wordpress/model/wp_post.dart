import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/model/wp_embedded.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/model/wp_title.dart';

class WPPost {
  final int id;
  final DateTime date;
  final WPTitle title;
  final String link;
  final List<int> tags;
  final List<int> categories;
  final WPEmbedded embedded;

  WPPost.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        date = DateTime.parse(map['date']),
        title = WPTitle.fromMap(map['title']),
        link = map['link'],
        tags = map['tags'].cast<int>(),
        categories = map['categories'].cast<int>(),
        embedded = WPEmbedded.fromMap(map['_embedded']);
}
