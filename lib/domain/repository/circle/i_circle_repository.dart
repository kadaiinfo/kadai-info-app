import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/domain/entity/circle/circle_category.dart';
import 'package:kadai_info_flutter/domain/entity/circle/circle_collection.dart';

abstract class ICircleRepository {
  /// サークル一覧の取得
  Future<Result<CircleCollection>> getCircleList({
    required CircleCategory category,
  });
}
