class BinanbijoCandidateConvert {
  static const Map<String, String> ids = {
    'だいむ': '24daimu',
    'ゆうや': '08yuya',
    '凌吉': '15ryokichi',
    'タイセイ': '11taisei',
    'だいちょん': '05daichon',
    'ゆうき': '01yuki',
    'みっちー': '22micchi',
    'たつや': '07tatsuya',
    'Sho': '20sho',
    'こうすけ': '13kosuke',
    'ねじめん': '12nejimen',
    'ちんとも': '19chintomo',
    'かな': '03kana',
    '涼香': '09ryoka',
    'りこ': '10riko',
    'ひろよ': '04hiroyo',
    'ミク': '16miku',
    'ななみ': '17nanami',
    'まんちゅー': '02manchu',
    'あやね': '06ayane',
    'すづ': '18sudu',
    'サキ': '14saki',
    'さくら': '21sakura'
  };

  BinanbijoCandidateConvert();

  String toId(String name) {
    final result = ids[name];
    if(result == null) return '';
    return result;
  }
}