// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_author.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArticleAuthorTearOff {
  const _$ArticleAuthorTearOff();

  _ArticleAuthor call(
      {required String id,
      required String name,
      required String? thumbnailUrl,
      required String link}) {
    return _ArticleAuthor(
      id: id,
      name: name,
      thumbnailUrl: thumbnailUrl,
      link: link,
    );
  }
}

/// @nodoc
const $ArticleAuthor = _$ArticleAuthorTearOff();

/// @nodoc
mixin _$ArticleAuthor {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleAuthorCopyWith<ArticleAuthor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleAuthorCopyWith<$Res> {
  factory $ArticleAuthorCopyWith(
          ArticleAuthor value, $Res Function(ArticleAuthor) then) =
      _$ArticleAuthorCopyWithImpl<$Res>;
  $Res call({String id, String name, String? thumbnailUrl, String link});
}

/// @nodoc
class _$ArticleAuthorCopyWithImpl<$Res>
    implements $ArticleAuthorCopyWith<$Res> {
  _$ArticleAuthorCopyWithImpl(this._value, this._then);

  final ArticleAuthor _value;
  // ignore: unused_field
  final $Res Function(ArticleAuthor) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? thumbnailUrl = freezed,
    Object? link = freezed,
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
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ArticleAuthorCopyWith<$Res>
    implements $ArticleAuthorCopyWith<$Res> {
  factory _$ArticleAuthorCopyWith(
          _ArticleAuthor value, $Res Function(_ArticleAuthor) then) =
      __$ArticleAuthorCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String? thumbnailUrl, String link});
}

/// @nodoc
class __$ArticleAuthorCopyWithImpl<$Res>
    extends _$ArticleAuthorCopyWithImpl<$Res>
    implements _$ArticleAuthorCopyWith<$Res> {
  __$ArticleAuthorCopyWithImpl(
      _ArticleAuthor _value, $Res Function(_ArticleAuthor) _then)
      : super(_value, (v) => _then(v as _ArticleAuthor));

  @override
  _ArticleAuthor get _value => super._value as _ArticleAuthor;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? thumbnailUrl = freezed,
    Object? link = freezed,
  }) {
    return _then(_ArticleAuthor(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ArticleAuthor implements _ArticleAuthor {
  const _$_ArticleAuthor(
      {required this.id,
      required this.name,
      required this.thumbnailUrl,
      required this.link});

  @override
  final String id;
  @override
  final String name;
  @override
  final String? thumbnailUrl;
  @override
  final String link;

  @override
  String toString() {
    return 'ArticleAuthor(id: $id, name: $name, thumbnailUrl: $thumbnailUrl, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ArticleAuthor &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnailUrl, thumbnailUrl)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(thumbnailUrl) ^
      const DeepCollectionEquality().hash(link);

  @JsonKey(ignore: true)
  @override
  _$ArticleAuthorCopyWith<_ArticleAuthor> get copyWith =>
      __$ArticleAuthorCopyWithImpl<_ArticleAuthor>(this, _$identity);
}

abstract class _ArticleAuthor implements ArticleAuthor {
  const factory _ArticleAuthor(
      {required String id,
      required String name,
      required String? thumbnailUrl,
      required String link}) = _$_ArticleAuthor;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @override
  String get link => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ArticleAuthorCopyWith<_ArticleAuthor> get copyWith =>
      throw _privateConstructorUsedError;
}
