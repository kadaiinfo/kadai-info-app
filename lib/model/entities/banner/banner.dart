import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kadai_info_flutter/model/model.dart';

part 'banner.freezed.dart';
part 'banner.g.dart';

@freezed
class Banner with _$Banner {
  factory Banner({
    required bool display,
    required String url,
    required BannerImage image
  }) = _Banner;

  factory Banner.fromJson(JsonMap json) => _$BannerFromJson(json);
}
