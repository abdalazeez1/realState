import 'package:freezed_annotation/freezed_annotation.dart';

part 'area.freezed.dart';
part 'area.g.dart';

@freezed
class AreaPost with _$AreaPost {
  const factory AreaPost({
    required int? id,
    required String? name,
    required double? price,
    required String? start_date,
    required String? end_date,
  }) = _AreaPost;

  factory AreaPost.fromJson(Map<String, Object?> json)
  => _$AreaPostFromJson(json);
}