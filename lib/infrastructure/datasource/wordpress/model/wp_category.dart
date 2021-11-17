enum WPCategory {
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

  /// サークルINFO
  circleInfo,

  /// 不明
  unknown,
}

extension WPCategoryExt on WPCategory {
  String get toCategoryId {
    switch (this) {
      case WPCategory.snap:
        return '40';
      case WPCategory.interview:
        return '42';
      case WPCategory.challenge:
        return '479';
      case WPCategory.gourmet:
        return '4';
      case WPCategory.outdoor:
        return '6';
      case WPCategory.entertainment:
        return '46';
      case WPCategory.recruit:
        return '184';
      case WPCategory.circleInfo:
        return '48';
      case WPCategory.unknown:
        return '';
    }
  }
}
