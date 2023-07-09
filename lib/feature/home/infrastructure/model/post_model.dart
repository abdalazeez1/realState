import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realstate/feature/home/infrastructure/model/types.dart';

import 'features.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
class PostModel with _$PostModel {
  const factory PostModel({
    required int? id,
    required String? description,
    required double? longitude,
    required double? latitude,
    required int? available,
    required int? diffInDay,
    required String? user_name,
    required String? area,
    required String? city,
    required String? category_name,
    required List<String>? comments,
    required List<String>? images,
    required List<FeaturesPost>? informations,
    required List<TypesPost>? types,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, Object?> json)
  => _$PostModelFromJson(json);
}