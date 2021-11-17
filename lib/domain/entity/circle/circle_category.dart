/// 記事タグ
enum CircleCategory {
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
}

extension CircleCategoryExt on CircleCategory {
  /// 名前
  String get toName {
    switch (this) {
      case CircleCategory.tennis:
        return 'テニス';
      case CircleCategory.basketball:
        return 'バスケ';
      case CircleCategory.soccer:
        return 'サッカー・フットサル';
      case CircleCategory.baseball:
        return '野球・ソフトボール';
      case CircleCategory.art:
        return 'アート・ファッション';
      case CircleCategory.badminton:
        return 'バドミントン';
      case CircleCategory.bicycle:
        return '自転車・自動車';
      case CircleCategory.communication:
        return 'コミュニケーション・国際';
      case CircleCategory.culture:
        return '文化・社会学';
      case CircleCategory.dance:
        return 'ダンス';
      case CircleCategory.drink:
        return '飲み';
      case CircleCategory.event:
        return 'イベント・パフォーマンス';
      case CircleCategory.game:
        return 'テーブルゲーム・コンピューターゲーム';
      case CircleCategory.handball:
        return 'ハンドボール';
      case CircleCategory.land:
        return '陸上';
      case CircleCategory.marin:
        return 'スカイ・マリンスポーツ';
      case CircleCategory.martial:
        return '武術・武道・射的';
      case CircleCategory.media:
        return 'メディア・情報';
      case CircleCategory.minorSports:
        return 'マイナースポーツ';
      case CircleCategory.music:
        return '音楽';
      case CircleCategory.nature:
        return '自然・科学';
      case CircleCategory.other:
        return 'その他';
      case CircleCategory.outdoor:
        return 'アウトドア・旅行';
      case CircleCategory.photo:
        return '写真・映像';
      case CircleCategory.tableTennis:
        return '卓球';
      case CircleCategory.volleyball:
        return 'バレーボール';
      case CircleCategory.volunteer:
        return 'ボランティア';
      case CircleCategory.allRound:
        return 'オールラウンド';
      case CircleCategory.rugby:
        return 'ラグビー・アメフト';
    }
  }

  /// 画像URL
  String get toImageUrl {
    switch (this) {
      case CircleCategory.tennis:
        return 'asset/image/circle/tennis.png';
      case CircleCategory.basketball:
        return 'asset/image/circle/basketball.png';
      case CircleCategory.soccer:
        return 'asset/image/circle/soccer.png';
      case CircleCategory.baseball:
        return 'asset/image/circle/baseball.png';
      case CircleCategory.rugby:
        return 'asset/image/circle/rugby.png';
      case CircleCategory.handball:
        return 'asset/image/circle/handball.png';
      case CircleCategory.badminton:
        return 'asset/image/circle/badminton.png';
      case CircleCategory.volleyball:
        return 'asset/image/circle/volleyball.png';
      case CircleCategory.tableTennis:
        return 'asset/image/circle/tabletennis.png';
      case CircleCategory.land:
        return 'asset/image/circle/land.png';
      case CircleCategory.martial:
        return 'asset/image/circle/martial.png';
      case CircleCategory.dance:
        return 'asset/image/circle/dance.png';
      case CircleCategory.marin:
        return 'asset/image/circle/marin.png';
      case CircleCategory.bicycle:
        return 'asset/image/circle/bicycle.png';
      case CircleCategory.minorSports:
        return 'asset/image/circle/minorsports.png';
      case CircleCategory.allRound:
        return 'allround.png';
      case CircleCategory.music:
        return 'asset/image/circle/music.png';
      case CircleCategory.culture:
        return 'asset/image/circle/culture.png';
      case CircleCategory.nature:
        return 'asset/image/circle/nature.png';
      case CircleCategory.communication:
        return 'asset/image/circle/communication.png';
      case CircleCategory.media:
        return 'asset/image/circle/media.png';
      case CircleCategory.volunteer:
        return 'asset/image/circle/volunteer.png';
      case CircleCategory.photo:
        return 'asset/image/circle/photo.png';
      case CircleCategory.game:
        return 'asset/image/circle/game.png';
      case CircleCategory.art:
        return 'asset/image/circle/art.png';
      case CircleCategory.event:
        return 'asset/image/circle/event.png';
      case CircleCategory.drink:
        return 'asset/image/circle/drink.png';
      case CircleCategory.outdoor:
        return 'asset/image/circle/outdoor.png';
      case CircleCategory.other:
        return 'asset/image/circle/other.png';
    }
  }
}
