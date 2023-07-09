import 'package:freezed_annotation/freezed_annotation.dart';

part 'types.freezed.dart';
part 'types.g.dart';

@freezed
class TypesPost with _$TypesPost {
  const factory TypesPost({
    required int? id,
    required String? name,
    required double? price,
    required String? start_date,
    required String? end_date,
  }) = _TypesPost;

  factory TypesPost.fromJson(Map<String, Object?> json)
  => _$TypesPostFromJson(json);
}