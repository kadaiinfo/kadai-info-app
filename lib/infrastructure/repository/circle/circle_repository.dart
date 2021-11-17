import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/domain/entity/circle/circle.dart';
import 'package:kadai_info_flutter/domain/entity/circle/circle_category.dart';
import 'package:kadai_info_flutter/domain/entity/circle/circle_collection.dart';
import 'package:kadai_info_flutter/domain/repository/circle/i_circle_repository.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/i_wordpress_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/wordpress/model/wp_category.dart';

class CircleRepository implements ICircleRepository {
  CircleRepository({
    required this.wp,
  });

  final IWordpressDatasource wp;

  @override
  Future<Result<CircleCollection>> getCircleList({
    required CircleCategory category,
  }) async {
    final data = await wp.postList(
      categories: [WPCategory.circleInfo.toCategoryId],
      tags: [category.toTagId],
    );
    final posts = data.body;
    final circles = posts
        .map((e) => Circle(
              name: e.title.rendered,
              imageUrl: e.embedded.medias.first.details.sizes.full?.sourceUrl,
              link: e.link,
            ))
        .toList();
    final collection = CircleCollection(
      circles: circles,
    );
    return Result.success(collection);
  }
}

extension on CircleCategory {
  String get toTagId {
    switch (this) {
      case CircleCategory.tennis:
        return '387';
      case CircleCategory.basketball:
        return '397';
      case CircleCategory.soccer:
        return '382';
      case CircleCategory.baseball:
        return '398';
      case CircleCategory.rugby:
        return '399';
      case CircleCategory.art:
        return '420';
      case CircleCategory.badminton:
        return '401';
      case CircleCategory.bicycle:
        return '408';
      case CircleCategory.communication:
        return '415';
      case CircleCategory.culture:
        return '413';
      case CircleCategory.dance:
        return '406';
      case CircleCategory.drink:
        return '422';
      case CircleCategory.event:
        return '421';
      case CircleCategory.game:
        return '419';
      case CircleCategory.handball:
        return '400';
      case CircleCategory.land:
        return '404';
      case CircleCategory.marin:
        return '407';
      case CircleCategory.martial:
        return '405';
      case CircleCategory.media:
        return '416';
      case CircleCategory.minorSports:
        return '410';
      case CircleCategory.music:
        return '412';
      case CircleCategory.nature:
        return '414';
      case CircleCategory.other:
        return '427';
      case CircleCategory.outdoor:
        return '409';
      case CircleCategory.photo:
        return '418';
      case CircleCategory.tableTennis:
        return '403';
      case CircleCategory.volleyball:
        return '402';
      case CircleCategory.volunteer:
        return '417';
      case CircleCategory.allRound:
        return '411';
    }
  }
}
