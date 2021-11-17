import 'package:kadai_info_flutter/domain/entity/circle/circle_category.dart';

class CircleGenreModel {
  /// 名前
  final String name;

  /// 画像パス
  final String imagePath;

  /// カテゴリー
  final CircleCategory category;

  CircleGenreModel({
    required this.category,
    required this.name,
    required this.imagePath,
  });

  factory CircleGenreModel.from(CircleCategory category) {
    return CircleGenreModel(
      category: category,
      name: category.toName,
      imagePath: category.toImageUrl,
    );
  }
}
