// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'timetable_lesson_delete_button_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TimetableLessonDeleteButtonStateTearOff {
  const _$TimetableLessonDeleteButtonStateTearOff();

  _TimetableLessonDeleteButtonState call(
      {String text = '削除', bool isConfirmed = false}) {
    return _TimetableLessonDeleteButtonState(
      text: text,
      isConfirmed: isConfirmed,
    );
  }
}

/// @nodoc
const $TimetableLessonDeleteButtonState =
    _$TimetableLessonDeleteButtonStateTearOff();

/// @nodoc
mixin _$TimetableLessonDeleteButtonState {
  String get text => throw _privateConstructorUsedError;
  bool get isConfirmed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimetableLessonDeleteButtonStateCopyWith<TimetableLessonDeleteButtonState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableLessonDeleteButtonStateCopyWith<$Res> {
  factory $TimetableLessonDeleteButtonStateCopyWith(
          TimetableLessonDeleteButtonState value,
          $Res Function(TimetableLessonDeleteButtonState) then) =
      _$TimetableLessonDeleteButtonStateCopyWithImpl<$Res>;
  $Res call({String text, bool isConfirmed});
}

/// @nodoc
class _$TimetableLessonDeleteButtonStateCopyWithImpl<$Res>
    implements $TimetableLessonDeleteButtonStateCopyWith<$Res> {
  _$TimetableLessonDeleteButtonStateCopyWithImpl(this._value, this._then);

  final TimetableLessonDeleteButtonState _value;
  // ignore: unused_field
  final $Res Function(TimetableLessonDeleteButtonState) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? isConfirmed = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isConfirmed: isConfirmed == freezed
          ? _value.isConfirmed
          : isConfirmed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TimetableLessonDeleteButtonStateCopyWith<$Res>
    implements $TimetableLessonDeleteButtonStateCopyWith<$Res> {
  factory _$TimetableLessonDeleteButtonStateCopyWith(
          _TimetableLessonDeleteButtonState value,
          $Res Function(_TimetableLessonDeleteButtonState) then) =
      __$TimetableLessonDeleteButtonStateCopyWithImpl<$Res>;
  @override
  $Res call({String text, bool isConfirmed});
}

/// @nodoc
class __$TimetableLessonDeleteButtonStateCopyWithImpl<$Res>
    extends _$TimetableLessonDeleteButtonStateCopyWithImpl<$Res>
    implements _$TimetableLessonDeleteButtonStateCopyWith<$Res> {
  __$TimetableLessonDeleteButtonStateCopyWithImpl(
      _TimetableLessonDeleteButtonState _value,
      $Res Function(_TimetableLessonDeleteButtonState) _then)
      : super(_value, (v) => _then(v as _TimetableLessonDeleteButtonState));

  @override
  _TimetableLessonDeleteButtonState get _value =>
      super._value as _TimetableLessonDeleteButtonState;

  @override
  $Res call({
    Object? text = freezed,
    Object? isConfirmed = freezed,
  }) {
    return _then(_TimetableLessonDeleteButtonState(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isConfirmed: isConfirmed == freezed
          ? _value.isConfirmed
          : isConfirmed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TimetableLessonDeleteButtonState
    implements _TimetableLessonDeleteButtonState {
  _$_TimetableLessonDeleteButtonState(
      {this.text = '削除', this.isConfirmed = false});

  @JsonKey(defaultValue: '削除')
  @override
  final String text;
  @JsonKey(defaultValue: false)
  @override
  final bool isConfirmed;

  @override
  String toString() {
    return 'TimetableLessonDeleteButtonState(text: $text, isConfirmed: $isConfirmed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimetableLessonDeleteButtonState &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.isConfirmed, isConfirmed) ||
                other.isConfirmed == isConfirmed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, isConfirmed);

  @JsonKey(ignore: true)
  @override
  _$TimetableLessonDeleteButtonStateCopyWith<_TimetableLessonDeleteButtonState>
      get copyWith => __$TimetableLessonDeleteButtonStateCopyWithImpl<
          _TimetableLessonDeleteButtonState>(this, _$identity);
}

abstract class _TimetableLessonDeleteButtonState
    implements TimetableLessonDeleteButtonState {
  factory _TimetableLessonDeleteButtonState({String text, bool isConfirmed}) =
      _$_TimetableLessonDeleteButtonState;

  @override
  String get text;
  @override
  bool get isConfirmed;
  @override
  @JsonKey(ignore: true)
  _$TimetableLessonDeleteButtonStateCopyWith<_TimetableLessonDeleteButtonState>
      get copyWith => throw _privateConstructorUsedError;
}
