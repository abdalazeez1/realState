import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: 'authenticated-user') AuthenticatedUser? authenticatedUser,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}

@freezed
class AuthenticatedUser with _$AuthenticatedUser {
  const factory AuthenticatedUser({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'role_id') int? roleId,
    @JsonKey(name: 'email_verified_at') dynamic? emailVerifiedAt,
    @JsonKey(name: 'reset_code') dynamic? resetCode,
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'post_count') int? postCount,
    @JsonKey(name: 'max_post') int? maxPost,
    @JsonKey(name: 'points') int? points,
    @JsonKey(name: 'created_at') dynamic? createdAt,
    @JsonKey(name: 'updated_at') dynamic? updatedAt,
    @JsonKey(name: 'role') Role? role,
    @JsonKey(name: 'posts') List<Posts>? posts,
    @JsonKey(name: 'comments') List<dynamic>? comments,
    @JsonKey(name: 'image') dynamic? image,
  }) = _AuthenticatedUser;

  factory AuthenticatedUser.fromJson(Map<String, Object?> json) => _$AuthenticatedUserFromJson(json);
}

@freezed
class Posts with _$Posts {
  const factory Posts({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'area_id') int? areaId,
    @JsonKey(name: 'catecory_id') int? catecoryId,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'longitude') String? longitude,
    @JsonKey(name: 'latitude') String? latitude,
    @JsonKey(name: 'available') int? available,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'diffInDay') int? diffInDay,
  }) = _Posts;

  factory Posts.fromJson(Map<String, Object?> json) => _$PostsFromJson(json);
}

@freezed
class Role with _$Role {
  const factory Role({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _Role;

  factory Role.fromJson(Map<String, Object?> json) => _$RoleFromJson(json);
}

