// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Vote {
  int get entryNumber => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  bool get isStudent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VoteCopyWith<Vote> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoteCopyWith<$Res> {
  factory $VoteCopyWith(Vote value, $Res Function(Vote) then) =
      _$VoteCopyWithImpl<$Res>;
  $Res call({int entryNumber, String gender, bool isStudent});
}

/// @nodoc
class _$VoteCopyWithImpl<$Res> implements $VoteCopyWith<$Res> {
  _$VoteCopyWithImpl(this._value, this._then);

  final Vote _value;
  // ignore: unused_field
  final $Res Function(Vote) _then;

  @override
  $Res call({
    Object? entryNumber = freezed,
    Object? gender = freezed,
    Object? isStudent = freezed,
  }) {
    return _then(_value.copyWith(
      entryNumber: entryNumber == freezed
          ? _value.entryNumber
          : entryNumber // ignore: cast_nullable_to_non_nullable
              as int,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      isStudent: isStudent == freezed
          ? _value.isStudent
          : isStudent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$VoteCopyWith<$Res> implements $VoteCopyWith<$Res> {
  factory _$VoteCopyWith(_Vote value, $Res Function(_Vote) then) =
      __$VoteCopyWithImpl<$Res>;
  @override
  $Res call({int entryNumber, String gender, bool isStudent});
}

/// @nodoc
class __$VoteCopyWithImpl<$Res> extends _$VoteCopyWithImpl<$Res>
    implements _$VoteCopyWith<$Res> {
  __$VoteCopyWithImpl(_Vote _value, $Res Function(_Vote) _then)
      : super(_value, (v) => _then(v as _Vote));

  @override
  _Vote get _value => super._value as _Vote;

  @override
  $Res call({
    Object? entryNumber = freezed,
    Object? gender = freezed,
    Object? isStudent = freezed,
  }) {
    return _then(_Vote(
      entryNumber: entryNumber == freezed
          ? _value.entryNumber
          : entryNumber // ignore: cast_nullable_to_non_nullable
              as int,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      isStudent: isStudent == freezed
          ? _value.isStudent
          : isStudent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Vote implements _Vote {
  const _$_Vote(
      {required this.entryNumber,
      required this.gender,
      required this.isStudent});

  @override
  final int entryNumber;
  @override
  final String gender;
  @override
  final bool isStudent;

  @override
  String toString() {
    return 'Vote(entryNumber: $entryNumber, gender: $gender, isStudent: $isStudent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Vote &&
            const DeepCollectionEquality()
                .equals(other.entryNumber, entryNumber) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.isStudent, isStudent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(entryNumber),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(isStudent));

  @JsonKey(ignore: true)
  @override
  _$VoteCopyWith<_Vote> get copyWith =>
      __$VoteCopyWithImpl<_Vote>(this, _$identity);
}

abstract class _Vote implements Vote {
  const factory _Vote(
      {required final int entryNumber,
      required final String gender,
      required final bool isStudent}) = _$_Vote;

  @override
  int get entryNumber => throw _privateConstructorUsedError;
  @override
  String get gender => throw _privateConstructorUsedError;
  @override
  bool get isStudent => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VoteCopyWith<_Vote> get copyWith => throw _privateConstructorUsedError;
}
