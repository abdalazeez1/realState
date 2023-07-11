// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AreaPost _$$_AreaPostFromJson(Map<String, dynamic> json) => _$_AreaPost(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      start_date: json['start_date'] as String?,
      end_date: json['end_date'] as String?,
    );

Map<String, dynamic> _$$_AreaPostToJson(_$_AreaPost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
    };
