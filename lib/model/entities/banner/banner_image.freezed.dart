// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'banner_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BannerImage _$BannerImageFromJson(Map<String, dynamic> json) {
  return _BannerImage.fromJson(json);
}

/// @nodoc
mixin _$BannerImage {
  String get url => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerImageCopyWith<BannerImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerImageCopyWith<$Res> {
  factory $BannerImageCopyWith(
          BannerImage value, $Res Function(BannerImage) then) =
      _$BannerImageCopyWithImpl<$Res>;
  $Res call({String url, int height, int width});
}

/// @nodoc
class _$BannerImageCopyWithImpl<$Res> implements $BannerImageCopyWith<$Res> {
  _$BannerImageCopyWithImpl(this._value, this._then);

  final BannerImage _value;
  // ignore: unused_field
  final $Res Function(BannerImage) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$BannerImageCopyWith<$Res>
    implements $BannerImageCopyWith<$Res> {
  factory _$BannerImageCopyWith(
          _BannerImage value, $Res Function(_BannerImage) then) =
      __$BannerImageCopyWithImpl<$Res>;
  @override
  $Res call({String url, int height, int width});
}

/// @nodoc
class __$BannerImageCopyWithImpl<$Res> extends _$BannerImageCopyWithImpl<$Res>
    implements _$BannerImageCopyWith<$Res> {
  __$BannerImageCopyWithImpl(
      _BannerImage _value, $Res Function(_BannerImage) _then)
      : super(_value, (v) => _then(v as _BannerImage));

  @override
  _BannerImage get _value => super._value as _BannerImage;

  @override
  $Res call({
    Object? url = freezed,
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_BannerImage(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BannerImage implements _BannerImage {
  _$_BannerImage(
      {required this.url, required this.height, required this.width});

  factory _$_BannerImage.fromJson(Map<String, dynamic> json) =>
      _$$_BannerImageFromJson(json);

  @override
  final String url;
  @override
  final int height;
  @override
  final int width;

  @override
  String toString() {
    return 'BannerImage(url: $url, height: $height, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BannerImage &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.width, width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(width));

  @JsonKey(ignore: true)
  @override
  _$BannerImageCopyWith<_BannerImage> get copyWith =>
      __$BannerImageCopyWithImpl<_BannerImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BannerImageToJson(this);
  }
}

abstract class _BannerImage implements BannerImage {
  factory _BannerImage(
      {required final String url,
      required final int height,
      required final int width}) = _$_BannerImage;

  factory _BannerImage.fromJson(Map<String, dynamic> json) =
      _$_BannerImage.fromJson;

  @override
  String get url => throw _privateConstructorUsedError;
  @override
  int get height => throw _privateConstructorUsedError;
  @override
  int get width => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BannerImageCopyWith<_BannerImage> get copyWith =>
      throw _privateConstructorUsedError;
}
