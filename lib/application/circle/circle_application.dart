import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/domain/entity/circle/circle_collection.dart';
import 'package:kadai_info_flutter/domain/entity/circle/circle_genre_collection.dart';

class CircleApplication {
  /// サークルジャンル一覧の取得
  Future<Result<CircleGenreCollection>> getCircleGenreList() async {
    return Result.success(CircleGenreCollection());
  }

  /// サークル一覧の取得
  Future<Result<CircleCollection>> getCircleList() async {
    return Result.success(CircleCollection());
  }
}
