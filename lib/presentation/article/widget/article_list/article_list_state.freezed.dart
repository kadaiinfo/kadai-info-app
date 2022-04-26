// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticleListState {
  List<ArticleModel> get articles => throw _privateConstructorUsedError;
  bool get hasNext => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleListStateCopyWith<ArticleListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleListStateCopyWith<$Res> {
  factory $ArticleListStateCopyWith(
          ArticleListState value, $Res Function(ArticleListState) then) =
      _$ArticleListStateCopyWithImpl<$Res>;
  $Res call({List<ArticleModel> articles, bool hasNext});
}

/// @nodoc
class _$ArticleListStateCopyWithImpl<$Res>
    implements $ArticleListStateCopyWith<$Res> {
  _$ArticleListStateCopyWithImpl(this._value, this._then);

  final ArticleListState _value;
  // ignore: unused_field
  final $Res Function(ArticleListState) _then;

  @override
  $Res call({
    Object? articles = freezed,
    Object? hasNext = freezed,
  }) {
    return _then(_value.copyWith(
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>,
      hasNext: hasNext == freezed
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ArticleListStateCopyWith<$Res>
    implements $ArticleListStateCopyWith<$Res> {
  factory _$ArticleListStateCopyWith(
          _ArticleListState value, $Res Function(_ArticleListState) then) =
      __$ArticleListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ArticleModel> articles, bool hasNext});
}

/// @nodoc
class __$ArticleListStateCopyWithImpl<$Res>
    extends _$ArticleListStateCopyWithImpl<$Res>
    implements _$ArticleListStateCopyWith<$Res> {
  __$ArticleListStateCopyWithImpl(
      _ArticleListState _value, $Res Function(_ArticleListState) _then)
      : super(_value, (v) => _then(v as _ArticleListState));

  @override
  _ArticleListState get _value => super._value as _ArticleListState;

  @override
  $Res call({
    Object? articles = freezed,
    Object? hasNext = freezed,
  }) {
    return _then(_ArticleListState(
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>,
      hasNext: hasNext == freezed
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ArticleListState implements _ArticleListState {
  const _$_ArticleListState(
      {final List<ArticleModel> articles = const [], this.hasNext = false})
      : _articles = articles;

  final List<ArticleModel> _articles;
  @override
  @JsonKey()
  List<ArticleModel> get articles {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  @JsonKey()
  final bool hasNext;

  @override
  String toString() {
    return 'ArticleListState(articles: $articles, hasNext: $hasNext)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleListState &&
            const DeepCollectionEquality().equals(other.articles, articles) &&
            const DeepCollectionEquality().equals(other.hasNext, hasNext));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(articles),
      const DeepCollectionEquality().hash(hasNext));

  @JsonKey(ignore: true)
  @override
  _$ArticleListStateCopyWith<_ArticleListState> get copyWith =>
      __$ArticleListStateCopyWithImpl<_ArticleListState>(this, _$identity);
}

abstract class _ArticleListState implements ArticleListState {
  const factory _ArticleListState(
      {final List<ArticleModel> articles,
      final bool hasNext}) = _$_ArticleListState;

  @override
  List<ArticleModel> get articles => throw _privateConstructorUsedError;
  @override
  bool get hasNext => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ArticleListStateCopyWith<_ArticleListState> get copyWith =>
      throw _privateConstructorUsedError;
}
