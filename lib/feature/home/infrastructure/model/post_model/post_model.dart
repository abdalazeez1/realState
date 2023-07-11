import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realstate/feature/home/infrastructure/model/type/types.dart';

import '../../../../profile/infrastructure/model/user.dart';
import '../area_model/area.dart';
import '../features/features.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
class PostModel with _$PostModel {
  const factory PostModel({
    required int? id,
    required int? user_id,
    required int? area_id,
    required int? catecory_id,
    required String? description,
    required String? longitude,
    required String? latitude,
    required int? available,
    required String? created_at,
    required String? updated_at,
    required int? diffInDay,
    required AuthenticatedUser his_user,
    required AreaPost? area,
    required dynamic? category,
    required List<String?> comments,
    required List<String?> images,
    required List<FeaturesPost?> informations,
    required List<TypesPost?> types,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, Object?> json)
  => _$PostModelFromJson(json);

  static List<PostModel> fromListJson(List<dynamic> list) =>
      list.map((e) => PostModel.fromJson(e)).toList();


}