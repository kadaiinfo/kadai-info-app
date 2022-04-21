// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:kadai_info_flutter/domain/entity/article/article_collection.dart';
import 'package:kadai_info_flutter/presentation/article/model/article_model.dart';

part 'article_list_state.freezed.dart';

@freezed
class ArticleListState with _$ArticleListState {
  const factory ArticleListState({
    @Default([]) List<ArticleModel> articles,
    @Default(false) bool hasNext,
  }) = _ArticleListState;

  factory ArticleListState.from(ArticleCollection collection) {
    return ArticleListState(
      articles: collection.articles.map((e) => ArticleModel.from(e)).toList(),
      hasNext: collection.hasNext,
    );
  }
}
