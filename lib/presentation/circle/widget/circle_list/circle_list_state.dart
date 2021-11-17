import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kadai_info_flutter/presentation/circle/model/circle_model.dart';

part 'circle_list_state.freezed.dart';

@freezed
class CircleListState with _$CircleListState {
  factory CircleListState({
    /// サークル一覧
    @Default([]) List<CircleModel> circles,

    /// 次のページの有無
    @Default(false) bool hasNext,
  }) = _CircleListState;
}
