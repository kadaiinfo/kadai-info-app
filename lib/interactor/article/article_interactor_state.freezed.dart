// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_interactor_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArticleInteractorStateTearOff {
  const _$ArticleInteractorStateTearOff();

  _ArticleInteractorState call(
      {ArticleCollection data = const ArticleCollection()}) {
    return _ArticleInteractorState(
      data: data,
    );
  }
}

/// @nodoc
const $ArticleInteractorState = _$ArticleInteractorStateTearOff();

/// @nodoc
mixin _$ArticleInteractorState {
  ArticleCollection get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleInteractorStateCopyWith<ArticleInteractorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleInteractorStateCopyWith<$Res> {
  factory $ArticleInteractorStateCopyWith(ArticleInteractorState value,
          $Res Function(ArticleInteractorState) then) =
      _$ArticleInteractorStateCopyWithImpl<$Res>;
  $Res call({ArticleCollection data});

  $ArticleCollectionCopyWith<$Res> get data;
}

/// @nodoc
class _$ArticleInteractorStateCopyWithImpl<$Res>
    implements $ArticleInteractorStateCopyWith<$Res> {
  _$ArticleInteractorStateCopyWithImpl(this._value, this._then);

  final ArticleInteractorState _value;
  // ignore: unused_field
  final $Res Function(ArticleInteractorState) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ArticleCollection,
    ));
  }

  @override
  $ArticleCollectionCopyWith<$Res> get data {
    return $ArticleCollectionCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$ArticleInteractorStateCopyWith<$Res>
    implements $ArticleInteractorStateCopyWith<$Res> {
  factory _$ArticleInteractorStateCopyWith(_ArticleInteractorState value,
          $Res Function(_ArticleInteractorState) then) =
      __$ArticleInteractorStateCopyWithImpl<$Res>;
  @override
  $Res call({ArticleCollection data});

  @override
  $ArticleCollectionCopyWith<$Res> get data;
}

/// @nodoc
class __$ArticleInteractorStateCopyWithImpl<$Res>
    extends _$ArticleInteractorStateCopyWithImpl<$Res>
    implements _$ArticleInteractorStateCopyWith<$Res> {
  __$ArticleInteractorStateCopyWithImpl(_ArticleInteractorState _value,
      $Res Function(_ArticleInteractorState) _then)
      : super(_value, (v) => _then(v as _ArticleInteractorState));

  @override
  _ArticleInteractorState get _value => super._value as _ArticleInteractorState;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_ArticleInteractorState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ArticleCollection,
    ));
  }
}

/// @nodoc

class _$_ArticleInteractorState implements _ArticleInteractorState {
  const _$_ArticleInteractorState({this.data = const ArticleCollection()});

  @JsonKey(defaultValue: const ArticleCollection())
  @override
  final ArticleCollection data;

  @override
  String toString() {
    return 'ArticleInteractorState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ArticleInteractorState &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$ArticleInteractorStateCopyWith<_ArticleInteractorState> get copyWith =>
      __$ArticleInteractorStateCopyWithImpl<_ArticleInteractorState>(
          this, _$identity);
}

abstract class _ArticleInteractorState implements ArticleInteractorState {
  const factory _ArticleInteractorState({ArticleCollection data}) =
      _$_ArticleInteractorState;

  @override
  ArticleCollection get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ArticleInteractorStateCopyWith<_ArticleInteractorState> get copyWith =>
      throw _privateConstructorUsedError;
}
