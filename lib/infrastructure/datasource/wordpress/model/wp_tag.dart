/// 記事タグ
enum WPTag {
  /// テニス
  tennis,

  /// バスケットボール
  basketball,

  /// サッカー
  soccer,

  /// 野球
  baseball,

  /// ラグビー
  rugby,

  /// ハンドボール
  handball,

  /// バドミントン
  badminton,

  /// バレーボール
  volleyball,

  /// 卓球
  tableTennis,

  /// 陸上
  land,

  /// 武術
  martial,

  /// ダンス
  dance,

  /// マリンスポーツ
  marin,

  /// 自転車
  bicycle,

  /// マイナースポーツ
  minorSports,

  /// オールラウンド
  allRound,

  /// 音楽
  music,

  /// 文化
  culture,

  /// 自然
  nature,

  /// コミュニケーション
  communication,

  /// メディア
  media,

  /// ボランティア
  volunteer,

  /// 写真
  photo,

  /// ゲーム
  game,

  /// 美術
  art,

  /// イベント
  event,

  /// 飲み
  drink,

  /// アウトドア
  outdoor,

  /// その他
  other,

  /// 不明
  unknown,
}

extension WPTagExt on WPTag {
  String get toTagId {
    switch (this) {
      case WPTag.tennis:
        return '387';
      case WPTag.basketball:
        return '397';
      case WPTag.soccer:
        return '382';
      case WPTag.baseball:
        return '398';
      case WPTag.rugby:
        return '399';
      case WPTag.art:
        return '420';
      case WPTag.badminton:
        return '401';
      case WPTag.bicycle:
        return '408';
      case WPTag.communication:
        return '415';
      case WPTag.culture:
        return '413';
      case WPTag.dance:
        return '406';
      case WPTag.drink:
        return '422';
      case WPTag.event:
        return '421';
      case WPTag.game:
        return '419';
      case WPTag.handball:
        return '400';
      case WPTag.land:
        return '404';
      case WPTag.marin:
        return '407';
      case WPTag.martial:
        return '405';
      case WPTag.media:
        return '416';
      case WPTag.minorSports:
        return '410';
      case WPTag.music:
        return '412';
      case WPTag.nature:
        return '414';
      case WPTag.other:
        return '427';
      case WPTag.outdoor:
        return '409';
      case WPTag.photo:
        return '418';
      case WPTag.tableTennis:
        return '403';
      case WPTag.volleyball:
        return '402';
      case WPTag.volunteer:
        return '417';
      case WPTag.allRound:
        return '411';
      case WPTag.unknown:
        return '';
    }
  }
}
