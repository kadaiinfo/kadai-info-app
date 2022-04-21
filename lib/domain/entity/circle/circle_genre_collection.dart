// Project imports:
import 'package:kadai_info_flutter/domain/entity/circle/circle_genre.dart';

/// サークルジャンル一覧
class CircleGenreCollection {
  /// ジャンル一覧
  final List<CircleGenre> genres;

  CircleGenreCollection({
    this.genres = const [],
  });
}
