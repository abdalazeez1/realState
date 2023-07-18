import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required int? id,
    required String? name,
    required String? image_url,
    @Default(false) bool isSelected,
    required String? description,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, Object?> json)
  => _$CategoryModelFromJson(json);
}