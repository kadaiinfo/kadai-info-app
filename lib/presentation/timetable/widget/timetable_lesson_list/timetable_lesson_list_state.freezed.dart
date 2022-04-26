// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'timetable_lesson_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimetableLessonListState {
  List<TimetableLessonModel> get lessons => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimetableLessonListStateCopyWith<TimetableLessonListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableLessonListStateCopyWith<$Res> {
  factory $TimetableLessonListStateCopyWith(TimetableLessonListState value,
          $Res Function(TimetableLessonListState) then) =
      _$TimetableLessonListStateCopyWithImpl<$Res>;
  $Res call({List<TimetableLessonModel> lessons, int year});
}

/// @nodoc
class _$TimetableLessonListStateCopyWithImpl<$Res>
    implements $TimetableLessonListStateCopyWith<$Res> {
  _$TimetableLessonListStateCopyWithImpl(this._value, this._then);

  final TimetableLessonListState _value;
  // ignore: unused_field
  final $Res Function(TimetableLessonListState) _then;

  @override
  $Res call({
    Object? lessons = freezed,
    Object? year = freezed,
  }) {
    return _then(_value.copyWith(
      lessons: lessons == freezed
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<TimetableLessonModel>,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TimetableLessonListStateCopyWith<$Res>
    implements $TimetableLessonListStateCopyWith<$Res> {
  factory _$TimetableLessonListStateCopyWith(_TimetableLessonListState value,
          $Res Function(_TimetableLessonListState) then) =
      __$TimetableLessonListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<TimetableLessonModel> lessons, int year});
}

/// @nodoc
class __$TimetableLessonListStateCopyWithImpl<$Res>
    extends _$TimetableLessonListStateCopyWithImpl<$Res>
    implements _$TimetableLessonListStateCopyWith<$Res> {
  __$TimetableLessonListStateCopyWithImpl(_TimetableLessonListState _value,
      $Res Function(_TimetableLessonListState) _then)
      : super(_value, (v) => _then(v as _TimetableLessonListState));

  @override
  _TimetableLessonListState get _value =>
      super._value as _TimetableLessonListState;

  @override
  $Res call({
    Object? lessons = freezed,
    Object? year = freezed,
  }) {
    return _then(_TimetableLessonListState(
      lessons: lessons == freezed
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<TimetableLessonModel>,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TimetableLessonListState implements _TimetableLessonListState {
  const _$_TimetableLessonListState(
      {final List<TimetableLessonModel> lessons = const [], required this.year})
      : _lessons = lessons;

  final List<TimetableLessonModel> _lessons;
  @override
  @JsonKey()
  List<TimetableLessonModel> get lessons {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  @override
  final int year;

  @override
  String toString() {
    return 'TimetableLessonListState(lessons: $lessons, year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimetableLessonListState &&
            const DeepCollectionEquality().equals(other.lessons, lessons) &&
            const DeepCollectionEquality().equals(other.year, year));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lessons),
      const DeepCollectionEquality().hash(year));

  @JsonKey(ignore: true)
  @override
  _$TimetableLessonListStateCopyWith<_TimetableLessonListState> get copyWith =>
      __$TimetableLessonListStateCopyWithImpl<_TimetableLessonListState>(
          this, _$identity);
}

abstract class _TimetableLessonListState implements TimetableLessonListState {
  const factory _TimetableLessonListState(
      {final List<TimetableLessonModel> lessons,
      required final int year}) = _$_TimetableLessonListState;

  @override
  List<TimetableLessonModel> get lessons => throw _privateConstructorUsedError;
  @override
  int get year => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TimetableLessonListStateCopyWith<_TimetableLessonListState> get copyWith =>
      throw _privateConstructorUsedError;
}
