import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_author.dart';

class SQFArticle {
  static const keyId = 'id';
  static const keyTitle = 'title';
  static const keyLink = 'link';
  static const keyThumbnailUrl = 'thumbnail_url';
  static const keyPublishedAt = 'published_at';
  static const keyCreatedAt = 'created_at';
  static const keyAuthor = 'author';

  final String id;
  final String title;
  final String link;
  final String? thumbnailUrl;
  final DateTime publishedAt;
  final DateTime createdAt;
  final SQFAuthor author;

  SQFArticle.fromMap(Map<String, dynamic> map)
      : id = map[keyId],
        title = map[keyTitle],
        link = map[keyLink],
        thumbnailUrl = map[keyThumbnailUrl],
        publishedAt = map[keyPublishedAt],
        createdAt = map[keyCreatedAt],
        author = SQFAuthor.fromMap(map[keyAuthor]);
}
