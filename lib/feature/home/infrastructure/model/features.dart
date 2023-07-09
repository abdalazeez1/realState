import 'package:freezed_annotation/freezed_annotation.dart';

part 'features.freezed.dart';
part 'features.g.dart';

@freezed
class FeaturesPost with _$FeaturesPost {
  const factory FeaturesPost({
    required int? id,
    required String? name,
    required String? value,
  }) = _FeaturesPost;

  factory FeaturesPost.fromJson(Map<String, Object?> json)
  => _$FeaturesPostFromJson(json);
}