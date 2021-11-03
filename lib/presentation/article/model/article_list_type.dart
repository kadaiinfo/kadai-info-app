import 'package:kadai_info_flutter/domain/entity/article/article_category.dart';

enum ArticleListType {
  /// お気に入り
  favorite,

  /// 新着
  latest,

  /// SNAP
  snap,

  /// インタビュー
  interview,

  /// やってみた
  challenge,

  /// グルメ
  gourmet,

  /// おでかけ
  outdoor,

  /// エンタメ
  entertainment,

  /// 就職
  recruit,
}

extension ArticleListTypeExt on ArticleListType {
  ArticleCategory? get toCategory {
    switch (this) {
      case ArticleListType.snap:
        return ArticleCategory.snap;
      case ArticleListType.challenge:
        return ArticleCategory.challenge;
      case ArticleListType.gourmet:
        return ArticleCategory.gourmet;
      case ArticleListType.outdoor:
        return ArticleCategory.outdoor;
      case ArticleListType.entertainment:
        return ArticleCategory.entertainment;
      case ArticleListType.recruit:
        return ArticleCategory.recruit;
      case ArticleListType.interview:
        return ArticleCategory.interview;
      default:
        break;
    }
  }

  String get toTitle {
    switch (this) {
      case ArticleListType.favorite:
        return 'お気に入り';
      case ArticleListType.latest:
        return '新着';
      case ArticleListType.snap:
        return 'SNAP';

      case ArticleListType.interview:
        return 'インタビュー';

      case ArticleListType.challenge:
        return 'チャレンジ';

      case ArticleListType.gourmet:
        return 'グルメ';

      case ArticleListType.outdoor:
        return 'おでかけ';

      case ArticleListType.entertainment:
        return 'エンタメ';

      case ArticleListType.recruit:
        return '就職';
    }
  }
}
