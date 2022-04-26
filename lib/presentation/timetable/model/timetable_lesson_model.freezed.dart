// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'timetable_lesson_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimetableLessonModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get period => throw _privateConstructorUsedError;
  int get day => throw _privateConstructorUsedError;
  dynamic get room => throw _privateConstructorUsedError;
  dynamic get teacher => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimetableLessonModelCopyWith<TimetableLessonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableLessonModelCopyWith<$Res> {
  factory $TimetableLessonModelCopyWith(TimetableLessonModel value,
          $Res Function(TimetableLessonModel) then) =
      _$TimetableLessonModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      int period,
      int day,
      dynamic room,
      dynamic teacher});
}

/// @nodoc
class _$TimetableLessonModelCopyWithImpl<$Res>
    implements $TimetableLessonModelCopyWith<$Res> {
  _$TimetableLessonModelCopyWithImpl(this._value, this._then);

  final TimetableLessonModel _value;
  // ignore: unused_field
  final $Res Function(TimetableLessonModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? period = freezed,
    Object? day = freezed,
    Object? room = freezed,
    Object? teacher = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      period: period == freezed
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      room: room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as dynamic,
      teacher: teacher == freezed
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$TimetableLessonModelCopyWith<$Res>
    implements $TimetableLessonModelCopyWith<$Res> {
  factory _$TimetableLessonModelCopyWith(_TimetableLessonModel value,
          $Res Function(_TimetableLessonModel) then) =
      __$TimetableLessonModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      int period,
      int day,
      dynamic room,
      dynamic teacher});
}

/// @nodoc
class __$TimetableLessonModelCopyWithImpl<$Res>
    extends _$TimetableLessonModelCopyWithImpl<$Res>
    implements _$TimetableLessonModelCopyWith<$Res> {
  __$TimetableLessonModelCopyWithImpl(
      _TimetableLessonModel _value, $Res Function(_TimetableLessonModel) _then)
      : super(_value, (v) => _then(v as _TimetableLessonModel));

  @override
  _TimetableLessonModel get _value => super._value as _TimetableLessonModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? period = freezed,
    Object? day = freezed,
    Object? room = freezed,
    Object? teacher = freezed,
  }) {
    return _then(_TimetableLessonModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      period: period == freezed
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      room: room == freezed ? _value.room : room,
      teacher: teacher == freezed ? _value.teacher : teacher,
    ));
  }
}

/// @nodoc

class _$_TimetableLessonModel implements _TimetableLessonModel {
  const _$_TimetableLessonModel(
      {required this.id,
      required this.name,
      required this.period,
      required this.day,
      this.room = '',
      this.teacher = ''});

  @override
  final String id;
  @override
  final String name;
  @override
  final int period;
  @override
  final int day;
  @override
  @JsonKey()
  final dynamic room;
  @override
  @JsonKey()
  final dynamic teacher;

  @override
  String toString() {
    return 'TimetableLessonModel(id: $id, name: $name, period: $period, day: $day, room: $room, teacher: $teacher)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimetableLessonModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.period, period) &&
            const DeepCollectionEquality().equals(other.day, day) &&
            const DeepCollectionEquality().equals(other.room, room) &&
            const DeepCollectionEquality().equals(other.teacher, teacher));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(period),
      const DeepCollectionEquality().hash(day),
      const DeepCollectionEquality().hash(room),
      const DeepCollectionEquality().hash(teacher));

  @JsonKey(ignore: true)
  @override
  _$TimetableLessonModelCopyWith<_TimetableLessonModel> get copyWith =>
      __$TimetableLessonModelCopyWithImpl<_TimetableLessonModel>(
          this, _$identity);
}

abstract class _TimetableLessonModel implements TimetableLessonModel {
  const factory _TimetableLessonModel(
      {required final String id,
      required final String name,
      required final int period,
      required final int day,
      final dynamic room,
      final dynamic teacher}) = _$_TimetableLessonModel;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get period => throw _privateConstructorUsedError;
  @override
  int get day => throw _privateConstructorUsedError;
  @override
  dynamic get room => throw _privateConstructorUsedError;
  @override
  dynamic get teacher => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TimetableLessonModelCopyWith<_TimetableLessonModel> get copyWith =>
      throw _privateConstructorUsedError;
}
