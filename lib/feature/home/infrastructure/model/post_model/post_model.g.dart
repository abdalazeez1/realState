// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostModel _$$_PostModelFromJson(Map<String, dynamic> json) => _$_PostModel(
      id: json['id'] as int?,
      user_id: json['user_id'] as int?,
      area_id: json['area_id'] as int?,
      catecory_id: json['catecory_id'] as int?,
      description: json['description'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      available: json['available'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      diffInDay: json['diffInDay'] as int?,
      his_user: json['his_user'] == null
          ? null
          : AuthenticatedUser.fromJson(
              json['his_user'] as Map<String, dynamic>),
      area: json['area'] == null
          ? null
          : AreaPost.fromJson(json['area'] as Map<String, dynamic>),
      category: json['category'],
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
      'user_id': instance.user_id,
      'area_id': instance.area_id,
      'catecory_id': instance.catecory_id,
      'description': instance.description,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'available': instance.available,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'diffInDay': instance.diffInDay,
      'his_user': instance.his_user,
      'area': instance.area,
      'category': instance.category,
      'comments': instance.comments,
      'images': instance.images,
      'informations': instance.informations,
      'types': instance.types,
    };
