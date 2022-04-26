// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Banner _$$_BannerFromJson(Map<String, dynamic> json) => _$_Banner(
      display: json['display'] as bool,
      url: json['url'] as String,
      image: BannerImage.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BannerToJson(_$_Banner instance) => <String, dynamic>{
      'display': instance.display,
      'url': instance.url,
      'image': instance.image,
    };
