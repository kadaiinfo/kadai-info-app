import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kadai_info_flutter/domain/entity/article/article_collection.dart';

part 'article_interactor_state.freezed.dart';

@freezed
class ArticleInteractorState with _$ArticleInteractorState {
  const factory ArticleInteractorState({
    @Default(ArticleCollection()) ArticleCollection data,
  }) = _ArticleInteractorState;
}
