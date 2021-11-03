class SQFAuthor {
  static const keyId = 'id';
  static const keyName = 'name';
  static const keyLink = 'link';
  static const keyThumbnailUrl = 'thumbnail_url';

  final String id;
  final String name;
  final String link;
  final String? thumbnailUrl;

  SQFAuthor.fromMap(Map<String, dynamic> map)
      : id = map[keyId],
        name = map[keyName],
        link = map[keyLink],
        thumbnailUrl = map[keyThumbnailUrl];
}
