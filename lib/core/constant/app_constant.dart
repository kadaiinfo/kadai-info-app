class AppConstant {
  const AppConstant._();

  // アプリ名
  static const appName = 'KADAI INFO';

  // バージョン
  // TODO: アップデートのたびに数字を変える
  static const iosVersion = '8.0.0';
  static const androidVersion = '8.0.1';

  // 団体URL
  static const aboutUrl = 'https://kadai-info.com/lp/about-us/';

  /// プライバシーポリシーURL
  static const privacyPolicyUrl = '';

  /// 利用規約URL
  static const termsOfServiceUrl = '';

  /// お問い合わせURL
  static const inquiryUrl = 'https://kadai-info.com/contact/';

  // 連絡先メールアドレス
  static const contactMailAddress = 'kadai.information@gmail.com';

  // 連絡先電話番号
  static const contactPhoneNumber = '090-6399-7619';

  /// 外側余白
  static const double outsidePadding = 10.0;

  /// 通貨単位
  static const currencyUnit = '¥';

  /// ポイント単位
  static const pointUnit = 'pt';

  // microCMS APIKEY
  static const microCmsApiKey = String.fromEnvironment('MICRO_CMS_API_KEY');

  // WordPress ID/Pass
  static const wordPressApiKey = String.fromEnvironment('WORDPRESS_API_KEY');
}
