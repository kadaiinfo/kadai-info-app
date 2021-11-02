import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kadai_info_flutter/domain/entity/article/article_collection.dart';

import '../article_item/article_item_state.dart';

part 'article_list_state.freezed.dart';

@freezed
class ArticleListState with _$ArticleListState {
  const factory ArticleListState({
    @Default([]) List<String> ids,
    @Default(false) bool hasNext,
    required ArticleTabType type,
  }) = _ArticleListState;

  factory ArticleListState.from(
      ArticleCollection collection, ArticleTabType type) {
    return ArticleListState(
      ids: collection.articles.map((e) => e.id).toList(),
      hasNext: collection.hasNext,
      type: type,
    );
  }
}

enum ArticleTabType {
  /// お気に入り
  favorite,

  /// 新着
  latest,

  /// SNAP
  snap,

  /// インタビュー
  interview,

  /// やってみた
  challenge,

  /// グルメ
  gourmet,

  /// おでかけ
  outdoor,

  /// エンタメ
  entertainment,

  /// 就職
  recruit,
}

extension ArticleTabTypeExt on ArticleTabType {}
