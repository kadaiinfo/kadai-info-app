// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArticleListStateTearOff {
  const _$ArticleListStateTearOff();

  _ArticleListState call(
      {List<String> ids = const [],
      bool hasNext = false,
      required ArticleTabType type}) {
    return _ArticleListState(
      ids: ids,
      hasNext: hasNext,
      type: type,
    );
  }
}

/// @nodoc
const $ArticleListState = _$ArticleListStateTearOff();

/// @nodoc
mixin _$ArticleListState {
  List<String> get ids => throw _privateConstructorUsedError;
  bool get hasNext => throw _privateConstructorUsedError;
  ArticleTabType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleListStateCopyWith<ArticleListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleListStateCopyWith<$Res> {
  factory $ArticleListStateCopyWith(
          ArticleListState value, $Res Function(ArticleListState) then) =
      _$ArticleListStateCopyWithImpl<$Res>;
  $Res call({List<String> ids, bool hasNext, ArticleTabType type});
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
    Object? ids = freezed,
    Object? hasNext = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      ids: ids == freezed
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hasNext: hasNext == freezed
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ArticleTabType,
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
  $Res call({List<String> ids, bool hasNext, ArticleTabType type});
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
    Object? ids = freezed,
    Object? hasNext = freezed,
    Object? type = freezed,
  }) {
    return _then(_ArticleListState(
      ids: ids == freezed
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hasNext: hasNext == freezed
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ArticleTabType,
    ));
  }
}

/// @nodoc

class _$_ArticleListState implements _ArticleListState {
  const _$_ArticleListState(
      {this.ids = const [], this.hasNext = false, required this.type});

  @JsonKey(defaultValue: const [])
  @override
  final List<String> ids;
  @JsonKey(defaultValue: false)
  @override
  final bool hasNext;
  @override
  final ArticleTabType type;

  @override
  String toString() {
    return 'ArticleListState(ids: $ids, hasNext: $hasNext, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ArticleListState &&
            (identical(other.ids, ids) ||
                const DeepCollectionEquality().equals(other.ids, ids)) &&
            (identical(other.hasNext, hasNext) ||
                const DeepCollectionEquality()
                    .equals(other.hasNext, hasNext)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ids) ^
      const DeepCollectionEquality().hash(hasNext) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$ArticleListStateCopyWith<_ArticleListState> get copyWith =>
      __$ArticleListStateCopyWithImpl<_ArticleListState>(this, _$identity);
}

abstract class _ArticleListState implements ArticleListState {
  const factory _ArticleListState(
      {List<String> ids,
      bool hasNext,
      required ArticleTabType type}) = _$_ArticleListState;

  @override
  List<String> get ids => throw _privateConstructorUsedError;
  @override
  bool get hasNext => throw _privateConstructorUsedError;
  @override
  ArticleTabType get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ArticleListStateCopyWith<_ArticleListState> get copyWith =>
      throw _privateConstructorUsedError;
}
