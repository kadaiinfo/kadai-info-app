// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'candidate_collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CandidateCollectionTearOff {
  const _$CandidateCollectionTearOff();

  _CandidateCollection call({List<Candidate> candidates = const []}) {
    return _CandidateCollection(
      candidates: candidates,
    );
  }
}

/// @nodoc
const $CandidateCollection = _$CandidateCollectionTearOff();

/// @nodoc
mixin _$CandidateCollection {
  List<Candidate> get candidates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CandidateCollectionCopyWith<CandidateCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CandidateCollectionCopyWith<$Res> {
  factory $CandidateCollectionCopyWith(
          CandidateCollection value, $Res Function(CandidateCollection) then) =
      _$CandidateCollectionCopyWithImpl<$Res>;
  $Res call({List<Candidate> candidates});
}

/// @nodoc
class _$CandidateCollectionCopyWithImpl<$Res>
    implements $CandidateCollectionCopyWith<$Res> {
  _$CandidateCollectionCopyWithImpl(this._value, this._then);

  final CandidateCollection _value;
  // ignore: unused_field
  final $Res Function(CandidateCollection) _then;

  @override
  $Res call({
    Object? candidates = freezed,
  }) {
    return _then(_value.copyWith(
      candidates: candidates == freezed
          ? _value.candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<Candidate>,
    ));
  }
}

/// @nodoc
abstract class _$CandidateCollectionCopyWith<$Res>
    implements $CandidateCollectionCopyWith<$Res> {
  factory _$CandidateCollectionCopyWith(_CandidateCollection value,
          $Res Function(_CandidateCollection) then) =
      __$CandidateCollectionCopyWithImpl<$Res>;
  @override
  $Res call({List<Candidate> candidates});
}

/// @nodoc
class __$CandidateCollectionCopyWithImpl<$Res>
    extends _$CandidateCollectionCopyWithImpl<$Res>
    implements _$CandidateCollectionCopyWith<$Res> {
  __$CandidateCollectionCopyWithImpl(
      _CandidateCollection _value, $Res Function(_CandidateCollection) _then)
      : super(_value, (v) => _then(v as _CandidateCollection));

  @override
  _CandidateCollection get _value => super._value as _CandidateCollection;

  @override
  $Res call({
    Object? candidates = freezed,
  }) {
    return _then(_CandidateCollection(
      candidates: candidates == freezed
          ? _value.candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<Candidate>,
    ));
  }
}

/// @nodoc

class _$_CandidateCollection implements _CandidateCollection {
  const _$_CandidateCollection({this.candidates = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<Candidate> candidates;

  @override
  String toString() {
    return 'CandidateCollection(candidates: $candidates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CandidateCollection &&
            (identical(other.candidates, candidates) ||
                const DeepCollectionEquality()
                    .equals(other.candidates, candidates)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(candidates);

  @JsonKey(ignore: true)
  @override
  _$CandidateCollectionCopyWith<_CandidateCollection> get copyWith =>
      __$CandidateCollectionCopyWithImpl<_CandidateCollection>(
          this, _$identity);
}

abstract class _CandidateCollection implements CandidateCollection {
  const factory _CandidateCollection({List<Candidate> candidates}) =
      _$_CandidateCollection;

  @override
  List<Candidate> get candidates => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CandidateCollectionCopyWith<_CandidateCollection> get copyWith =>
      throw _privateConstructorUsedError;
}
