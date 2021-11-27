// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'timetable_lesson_item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TimetableLessonItemStateTearOff {
  const _$TimetableLessonItemStateTearOff();

  _TimetableLessonItemState call({String name = '', String room = ''}) {
    return _TimetableLessonItemState(
      name: name,
      room: room,
    );
  }
}

/// @nodoc
const $TimetableLessonItemState = _$TimetableLessonItemStateTearOff();

/// @nodoc
mixin _$TimetableLessonItemState {
  String get name => throw _privateConstructorUsedError;
  String get room => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimetableLessonItemStateCopyWith<TimetableLessonItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableLessonItemStateCopyWith<$Res> {
  factory $TimetableLessonItemStateCopyWith(TimetableLessonItemState value,
          $Res Function(TimetableLessonItemState) then) =
      _$TimetableLessonItemStateCopyWithImpl<$Res>;
  $Res call({String name, String room});
}

/// @nodoc
class _$TimetableLessonItemStateCopyWithImpl<$Res>
    implements $TimetableLessonItemStateCopyWith<$Res> {
  _$TimetableLessonItemStateCopyWithImpl(this._value, this._then);

  final TimetableLessonItemState _value;
  // ignore: unused_field
  final $Res Function(TimetableLessonItemState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? room = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      room: room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TimetableLessonItemStateCopyWith<$Res>
    implements $TimetableLessonItemStateCopyWith<$Res> {
  factory _$TimetableLessonItemStateCopyWith(_TimetableLessonItemState value,
          $Res Function(_TimetableLessonItemState) then) =
      __$TimetableLessonItemStateCopyWithImpl<$Res>;
  @override
  $Res call({String name, String room});
}

/// @nodoc
class __$TimetableLessonItemStateCopyWithImpl<$Res>
    extends _$TimetableLessonItemStateCopyWithImpl<$Res>
    implements _$TimetableLessonItemStateCopyWith<$Res> {
  __$TimetableLessonItemStateCopyWithImpl(_TimetableLessonItemState _value,
      $Res Function(_TimetableLessonItemState) _then)
      : super(_value, (v) => _then(v as _TimetableLessonItemState));

  @override
  _TimetableLessonItemState get _value =>
      super._value as _TimetableLessonItemState;

  @override
  $Res call({
    Object? name = freezed,
    Object? room = freezed,
  }) {
    return _then(_TimetableLessonItemState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      room: room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TimetableLessonItemState implements _TimetableLessonItemState {
  const _$_TimetableLessonItemState({this.name = '', this.room = ''});

  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: '')
  @override
  final String room;

  @override
  String toString() {
    return 'TimetableLessonItemState(name: $name, room: $room)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimetableLessonItemState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.room, room) || other.room == room));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, room);

  @JsonKey(ignore: true)
  @override
  _$TimetableLessonItemStateCopyWith<_TimetableLessonItemState> get copyWith =>
      __$TimetableLessonItemStateCopyWithImpl<_TimetableLessonItemState>(
          this, _$identity);
}

abstract class _TimetableLessonItemState implements TimetableLessonItemState {
  const factory _TimetableLessonItemState({String name, String room}) =
      _$_TimetableLessonItemState;

  @override
  String get name;
  @override
  String get room;
  @override
  @JsonKey(ignore: true)
  _$TimetableLessonItemStateCopyWith<_TimetableLessonItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
