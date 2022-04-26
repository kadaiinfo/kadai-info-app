// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'circle_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CircleListState {
  /// サークル一覧
  List<CircleModel> get circles => throw _privateConstructorUsedError;

  /// 次のページの有無
  bool get hasNext => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CircleListStateCopyWith<CircleListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CircleListStateCopyWith<$Res> {
  factory $CircleListStateCopyWith(
          CircleListState value, $Res Function(CircleListState) then) =
      _$CircleListStateCopyWithImpl<$Res>;
  $Res call({List<CircleModel> circles, bool hasNext});
}

/// @nodoc
class _$CircleListStateCopyWithImpl<$Res>
    implements $CircleListStateCopyWith<$Res> {
  _$CircleListStateCopyWithImpl(this._value, this._then);

  final CircleListState _value;
  // ignore: unused_field
  final $Res Function(CircleListState) _then;

  @override
  $Res call({
    Object? circles = freezed,
    Object? hasNext = freezed,
  }) {
    return _then(_value.copyWith(
      circles: circles == freezed
          ? _value.circles
          : circles // ignore: cast_nullable_to_non_nullable
              as List<CircleModel>,
      hasNext: hasNext == freezed
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CircleListStateCopyWith<$Res>
    implements $CircleListStateCopyWith<$Res> {
  factory _$CircleListStateCopyWith(
          _CircleListState value, $Res Function(_CircleListState) then) =
      __$CircleListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<CircleModel> circles, bool hasNext});
}

/// @nodoc
class __$CircleListStateCopyWithImpl<$Res>
    extends _$CircleListStateCopyWithImpl<$Res>
    implements _$CircleListStateCopyWith<$Res> {
  __$CircleListStateCopyWithImpl(
      _CircleListState _value, $Res Function(_CircleListState) _then)
      : super(_value, (v) => _then(v as _CircleListState));

  @override
  _CircleListState get _value => super._value as _CircleListState;

  @override
  $Res call({
    Object? circles = freezed,
    Object? hasNext = freezed,
  }) {
    return _then(_CircleListState(
      circles: circles == freezed
          ? _value.circles
          : circles // ignore: cast_nullable_to_non_nullable
              as List<CircleModel>,
      hasNext: hasNext == freezed
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CircleListState implements _CircleListState {
  _$_CircleListState(
      {final List<CircleModel> circles = const [], this.hasNext = false})
      : _circles = circles;

  /// サークル一覧
  final List<CircleModel> _circles;

  /// サークル一覧
  @override
  @JsonKey()
  List<CircleModel> get circles {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_circles);
  }

  /// 次のページの有無
  @override
  @JsonKey()
  final bool hasNext;

  @override
  String toString() {
    return 'CircleListState(circles: $circles, hasNext: $hasNext)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CircleListState &&
            const DeepCollectionEquality().equals(other.circles, circles) &&
            const DeepCollectionEquality().equals(other.hasNext, hasNext));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(circles),
      const DeepCollectionEquality().hash(hasNext));

  @JsonKey(ignore: true)
  @override
  _$CircleListStateCopyWith<_CircleListState> get copyWith =>
      __$CircleListStateCopyWithImpl<_CircleListState>(this, _$identity);
}

abstract class _CircleListState implements CircleListState {
  factory _CircleListState(
      {final List<CircleModel> circles,
      final bool hasNext}) = _$_CircleListState;

  @override

  /// サークル一覧
  List<CircleModel> get circles => throw _privateConstructorUsedError;
  @override

  /// 次のページの有無
  bool get hasNext => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CircleListStateCopyWith<_CircleListState> get copyWith =>
      throw _privateConstructorUsedError;
}
