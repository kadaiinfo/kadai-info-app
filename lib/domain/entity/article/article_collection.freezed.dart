// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticleCollection {
  List<Article> get articles => throw _privateConstructorUsedError;
  bool get hasNext => throw _privateConstructorUsedError;
  bool get hasPrevious => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleCollectionCopyWith<ArticleCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCollectionCopyWith<$Res> {
  factory $ArticleCollectionCopyWith(
          ArticleCollection value, $Res Function(ArticleCollection) then) =
      _$ArticleCollectionCopyWithImpl<$Res>;
  $Res call({List<Article> articles, bool hasNext, bool hasPrevious});
}

/// @nodoc
class _$ArticleCollectionCopyWithImpl<$Res>
    implements $ArticleCollectionCopyWith<$Res> {
  _$ArticleCollectionCopyWithImpl(this._value, this._then);

  final ArticleCollection _value;
  // ignore: unused_field
  final $Res Function(ArticleCollection) _then;

  @override
  $Res call({
    Object? articles = freezed,
    Object? hasNext = freezed,
    Object? hasPrevious = freezed,
  }) {
    return _then(_value.copyWith(
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      hasNext: hasNext == freezed
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPrevious: hasPrevious == freezed
          ? _value.hasPrevious
          : hasPrevious // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ArticleCollectionCopyWith<$Res>
    implements $ArticleCollectionCopyWith<$Res> {
  factory _$ArticleCollectionCopyWith(
          _ArticleCollection value, $Res Function(_ArticleCollection) then) =
      __$ArticleCollectionCopyWithImpl<$Res>;
  @override
  $Res call({List<Article> articles, bool hasNext, bool hasPrevious});
}

/// @nodoc
class __$ArticleCollectionCopyWithImpl<$Res>
    extends _$ArticleCollectionCopyWithImpl<$Res>
    implements _$ArticleCollectionCopyWith<$Res> {
  __$ArticleCollectionCopyWithImpl(
      _ArticleCollection _value, $Res Function(_ArticleCollection) _then)
      : super(_value, (v) => _then(v as _ArticleCollection));

  @override
  _ArticleCollection get _value => super._value as _ArticleCollection;

  @override
  $Res call({
    Object? articles = freezed,
    Object? hasNext = freezed,
    Object? hasPrevious = freezed,
  }) {
    return _then(_ArticleCollection(
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      hasNext: hasNext == freezed
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPrevious: hasPrevious == freezed
          ? _value.hasPrevious
          : hasPrevious // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ArticleCollection implements _ArticleCollection {
  _$_ArticleCollection(
      {final List<Article> articles = const [],
      this.hasNext = false,
      this.hasPrevious = false})
      : _articles = articles;

  final List<Article> _articles;
  @override
  @JsonKey()
  List<Article> get articles {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  @JsonKey()
  final bool hasNext;
  @override
  @JsonKey()
  final bool hasPrevious;

  @override
  String toString() {
    return 'ArticleCollection(articles: $articles, hasNext: $hasNext, hasPrevious: $hasPrevious)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleCollection &&
            const DeepCollectionEquality().equals(other.articles, articles) &&
            const DeepCollectionEquality().equals(other.hasNext, hasNext) &&
            const DeepCollectionEquality()
                .equals(other.hasPrevious, hasPrevious));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(articles),
      const DeepCollectionEquality().hash(hasNext),
      const DeepCollectionEquality().hash(hasPrevious));

  @JsonKey(ignore: true)
  @override
  _$ArticleCollectionCopyWith<_ArticleCollection> get copyWith =>
      __$ArticleCollectionCopyWithImpl<_ArticleCollection>(this, _$identity);
}

abstract class _ArticleCollection implements ArticleCollection {
  factory _ArticleCollection(
      {final List<Article> articles,
      final bool hasNext,
      final bool hasPrevious}) = _$_ArticleCollection;

  @override
  List<Article> get articles => throw _privateConstructorUsedError;
  @override
  bool get hasNext => throw _privateConstructorUsedError;
  @override
  bool get hasPrevious => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ArticleCollectionCopyWith<_ArticleCollection> get copyWith =>
      throw _privateConstructorUsedError;
}
