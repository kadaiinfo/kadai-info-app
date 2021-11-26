enum Gender { male, female }

extension GenderEx on Gender {
  static final jps = {Gender.male: '男', Gender.female: '女'};

  String get jp => jps[this]!;
}
