// Project imports:
import 'package:kadai_info_flutter/domain/entity/circle/circle.dart';

class CircleModel {
  /// 名前
  final String name;

  /// 画像パス
  final String? imagePath;

  /// リンクURL
  final String link;

  CircleModel({
    required this.name,
    required this.imagePath,
    required this.link,
  });

  factory CircleModel.from(Circle circle) {
    return CircleModel(
      name: circle.name,
      imagePath: circle.imageUrl,
      link: circle.link,
    );
  }
}
