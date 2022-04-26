import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kadai_info_flutter/model/entities/banner/banner_image.dart';

part 'banner.freezed.dart';
part 'banner.g.dart';

@freezed
class Banner with _$Banner {
  factory Banner({
    required String url,
    required BannerImage image
  }) = _Banner;

  factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);
}
