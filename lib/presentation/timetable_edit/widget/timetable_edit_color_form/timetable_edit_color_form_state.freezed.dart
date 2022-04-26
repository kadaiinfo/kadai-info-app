// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'timetable_edit_color_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimetableEditColorFormState {
  Color get selectedColor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimetableEditColorFormStateCopyWith<TimetableEditColorFormState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableEditColorFormStateCopyWith<$Res> {
  factory $TimetableEditColorFormStateCopyWith(
          TimetableEditColorFormState value,
          $Res Function(TimetableEditColorFormState) then) =
      _$TimetableEditColorFormStateCopyWithImpl<$Res>;
  $Res call({Color selectedColor});
}

/// @nodoc
class _$TimetableEditColorFormStateCopyWithImpl<$Res>
    implements $TimetableEditColorFormStateCopyWith<$Res> {
  _$TimetableEditColorFormStateCopyWithImpl(this._value, this._then);

  final TimetableEditColorFormState _value;
  // ignore: unused_field
  final $Res Function(TimetableEditColorFormState) _then;

  @override
  $Res call({
    Object? selectedColor = freezed,
  }) {
    return _then(_value.copyWith(
      selectedColor: selectedColor == freezed
          ? _value.selectedColor
          : selectedColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
abstract class _$TimetableEditColorFormStateCopyWith<$Res>
    implements $TimetableEditColorFormStateCopyWith<$Res> {
  factory _$TimetableEditColorFormStateCopyWith(
          _TimetableEditColorFormState value,
          $Res Function(_TimetableEditColorFormState) then) =
      __$TimetableEditColorFormStateCopyWithImpl<$Res>;
  @override
  $Res call({Color selectedColor});
}

/// @nodoc
class __$TimetableEditColorFormStateCopyWithImpl<$Res>
    extends _$TimetableEditColorFormStateCopyWithImpl<$Res>
    implements _$TimetableEditColorFormStateCopyWith<$Res> {
  __$TimetableEditColorFormStateCopyWithImpl(
      _TimetableEditColorFormState _value,
      $Res Function(_TimetableEditColorFormState) _then)
      : super(_value, (v) => _then(v as _TimetableEditColorFormState));

  @override
  _TimetableEditColorFormState get _value =>
      super._value as _TimetableEditColorFormState;

  @override
  $Res call({
    Object? selectedColor = freezed,
  }) {
    return _then(_TimetableEditColorFormState(
      selectedColor: selectedColor == freezed
          ? _value.selectedColor
          : selectedColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_TimetableEditColorFormState implements _TimetableEditColorFormState {
  const _$_TimetableEditColorFormState({required this.selectedColor});

  @override
  final Color selectedColor;

  @override
  String toString() {
    return 'TimetableEditColorFormState(selectedColor: $selectedColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimetableEditColorFormState &&
            const DeepCollectionEquality()
                .equals(other.selectedColor, selectedColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedColor));

  @JsonKey(ignore: true)
  @override
  _$TimetableEditColorFormStateCopyWith<_TimetableEditColorFormState>
      get copyWith => __$TimetableEditColorFormStateCopyWithImpl<
          _TimetableEditColorFormState>(this, _$identity);
}

abstract class _TimetableEditColorFormState
    implements TimetableEditColorFormState {
  const factory _TimetableEditColorFormState(
      {required final Color selectedColor}) = _$_TimetableEditColorFormState;

  @override
  Color get selectedColor => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TimetableEditColorFormStateCopyWith<_TimetableEditColorFormState>
      get copyWith => throw _privateConstructorUsedError;
}
