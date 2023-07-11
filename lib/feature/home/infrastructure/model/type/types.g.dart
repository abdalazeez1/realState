// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TypesPost _$$_TypesPostFromJson(Map<String, dynamic> json) => _$_TypesPost(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      start_date: json['start_date'] as String?,
      end_date: json['end_date'] as String?,
    );

Map<String, dynamic> _$$_TypesPostToJson(_$_TypesPost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
    };
