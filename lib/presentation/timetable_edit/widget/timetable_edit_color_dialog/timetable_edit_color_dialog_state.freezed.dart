// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'timetable_edit_color_dialog_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimetableEditColorDialogState {
  Color get selectedColor => throw _privateConstructorUsedError;
  List<int> get colors => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimetableEditColorDialogStateCopyWith<TimetableEditColorDialogState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetableEditColorDialogStateCopyWith<$Res> {
  factory $TimetableEditColorDialogStateCopyWith(
          TimetableEditColorDialogState value,
          $Res Function(TimetableEditColorDialogState) then) =
      _$TimetableEditColorDialogStateCopyWithImpl<$Res>;
  $Res call({Color selectedColor, List<int> colors});
}

/// @nodoc
class _$TimetableEditColorDialogStateCopyWithImpl<$Res>
    implements $TimetableEditColorDialogStateCopyWith<$Res> {
  _$TimetableEditColorDialogStateCopyWithImpl(this._value, this._then);

  final TimetableEditColorDialogState _value;
  // ignore: unused_field
  final $Res Function(TimetableEditColorDialogState) _then;

  @override
  $Res call({
    Object? selectedColor = freezed,
    Object? colors = freezed,
  }) {
    return _then(_value.copyWith(
      selectedColor: selectedColor == freezed
          ? _value.selectedColor
          : selectedColor // ignore: cast_nullable_to_non_nullable
              as Color,
      colors: colors == freezed
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$TimetableEditColorDialogStateCopyWith<$Res>
    implements $TimetableEditColorDialogStateCopyWith<$Res> {
  factory _$TimetableEditColorDialogStateCopyWith(
          _TimetableEditColorDialogState value,
          $Res Function(_TimetableEditColorDialogState) then) =
      __$TimetableEditColorDialogStateCopyWithImpl<$Res>;
  @override
  $Res call({Color selectedColor, List<int> colors});
}

/// @nodoc
class __$TimetableEditColorDialogStateCopyWithImpl<$Res>
    extends _$TimetableEditColorDialogStateCopyWithImpl<$Res>
    implements _$TimetableEditColorDialogStateCopyWith<$Res> {
  __$TimetableEditColorDialogStateCopyWithImpl(
      _TimetableEditColorDialogState _value,
      $Res Function(_TimetableEditColorDialogState) _then)
      : super(_value, (v) => _then(v as _TimetableEditColorDialogState));

  @override
  _TimetableEditColorDialogState get _value =>
      super._value as _TimetableEditColorDialogState;

  @override
  $Res call({
    Object? selectedColor = freezed,
    Object? colors = freezed,
  }) {
    return _then(_TimetableEditColorDialogState(
      selectedColor: selectedColor == freezed
          ? _value.selectedColor
          : selectedColor // ignore: cast_nullable_to_non_nullable
              as Color,
      colors: colors == freezed
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_TimetableEditColorDialogState
    implements _TimetableEditColorDialogState {
  const _$_TimetableEditColorDialogState(
      {required this.selectedColor,
      final List<int> colors = const [
        0xFFDDDDDD,
        0xFFAAAAAA,
        0xFF888888,
        0xFF555555,
        0xFFF06292,
        0xFFE57373,
        0xFFFF8A65,
        0xFFFFB74D,
        0xFFFFD54F,
        0xFFFFF176,
        0xFFDCE775,
        0xFFAED581,
        0xFF81C784,
        0xFF4DB6AC,
        0xFF4DD0E1,
        0xFF4FC3F7,
        0xFF64B5F6,
        0xFF7986CB,
        0xFF9575CD,
        0xFFBA68C8
      ]})
      : _colors = colors;

  @override
  final Color selectedColor;
  final List<int> _colors;
  @override
  @JsonKey()
  List<int> get colors {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  @override
  String toString() {
    return 'TimetableEditColorDialogState(selectedColor: $selectedColor, colors: $colors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimetableEditColorDialogState &&
            const DeepCollectionEquality()
                .equals(other.selectedColor, selectedColor) &&
            const DeepCollectionEquality().equals(other.colors, colors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedColor),
      const DeepCollectionEquality().hash(colors));

  @JsonKey(ignore: true)
  @override
  _$TimetableEditColorDialogStateCopyWith<_TimetableEditColorDialogState>
      get copyWith => __$TimetableEditColorDialogStateCopyWithImpl<
          _TimetableEditColorDialogState>(this, _$identity);
}

abstract class _TimetableEditColorDialogState
    implements TimetableEditColorDialogState {
  const factory _TimetableEditColorDialogState(
      {required final Color selectedColor,
      final List<int> colors}) = _$_TimetableEditColorDialogState;

  @override
  Color get selectedColor => throw _privateConstructorUsedError;
  @override
  List<int> get colors => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TimetableEditColorDialogStateCopyWith<_TimetableEditColorDialogState>
      get copyWith => throw _privateConstructorUsedError;
}
