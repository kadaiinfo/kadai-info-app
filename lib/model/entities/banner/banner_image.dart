import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kadai_info_flutter/model/model.dart';

part 'banner_image.freezed.dart';
part 'banner_image.g.dart';

@freezed
class BannerImage with _$BannerImage {
  factory BannerImage({
    required String url,
    required int height,
    required int width
    
  }) = _BannerImage;

  factory BannerImage.fromJson(JsonMap json) => _$BannerImageFromJson(json);
}