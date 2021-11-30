class AppConstant {
  const AppConstant._();

  // 団体URL
  static const aboutUrl = 'https://kadai-info.com/lp/about-us/';

  /// プライバシーポリシーURL
  static const privacyPolicyUrl = '';

  /// 利用規約URL
  static const termsOfServiceUrl = '';

  /// お問い合わせURL
  static const inquiryUrl = 'https://kadai-info.com/contact/';

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
