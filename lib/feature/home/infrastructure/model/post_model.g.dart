// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostModel _$$_PostModelFromJson(Map<String, dynamic> json) => _$_PostModel(
      id: json['id'] as int?,
      description: json['description'] as String?,
      longitude: (json['longitude'] as num?)?.toDouble(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      available: json['available'] as int?,
      diffInDay: json['diffInDay'] as int?,
      user_name: json['user_name'] as String?,
      area: json['area'] as String?,
      city: json['city'] as String?,
      category_name: json['category_name'] as String?,
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      informations: (json['informations'] as List<dynamic>?)
          ?.map((e) => FeaturesPost.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>?)
          ?.map((e) => TypesPost.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PostModelToJson(_$_PostModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'available': instance.available,
      'diffInDay': instance.diffInDay,
      'user_name': instance.user_name,
      'area': instance.area,
      'city': instance.city,
      'category_name': instance.category_name,
      'comments': instance.comments,
      'images': instance.images,
      'informations': instance.informations,
      'types': instance.types,
    };
