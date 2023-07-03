// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      authenticatedUser: json['authenticated-user'] == null
          ? null
          : AuthenticatedUser.fromJson(
              json['authenticated-user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'authenticated-user': instance.authenticatedUser,
    };

_$_AuthenticatedUser _$$_AuthenticatedUserFromJson(Map<String, dynamic> json) =>
    _$_AuthenticatedUser(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      roleId: json['role_id'] as int?,
      emailVerifiedAt: json['email_verified_at'],
      resetCode: json['reset_code'],
      status: json['status'] as int?,
      postCount: json['post_count'] as int?,
      maxPost: json['max_post'] as int?,
      points: json['points'] as int?,
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      role: json['role'] == null
          ? null
          : Role.fromJson(json['role'] as Map<String, dynamic>),
      posts: (json['posts'] as List<dynamic>?)
          ?.map((e) => Posts.fromJson(e as Map<String, dynamic>))
          .toList(),
      comments: json['comments'] as List<dynamic>?,
      image: json['image'],
    );

Map<String, dynamic> _$$_AuthenticatedUserToJson(
        _$_AuthenticatedUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'role_id': instance.roleId,
      'email_verified_at': instance.emailVerifiedAt,
      'reset_code': instance.resetCode,
      'status': instance.status,
      'post_count': instance.postCount,
      'max_post': instance.maxPost,
      'points': instance.points,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'role': instance.role,
      'posts': instance.posts,
      'comments': instance.comments,
      'image': instance.image,
    };

_$_Posts _$$_PostsFromJson(Map<String, dynamic> json) => _$_Posts(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      areaId: json['area_id'] as int?,
      catecoryId: json['catecory_id'] as int?,
      description: json['description'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      available: json['available'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      diffInDay: json['diffInDay'] as int?,
    );

Map<String, dynamic> _$$_PostsToJson(_$_Posts instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'area_id': instance.areaId,
      'catecory_id': instance.catecoryId,
      'description': instance.description,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'available': instance.available,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'diffInDay': instance.diffInDay,
    };

_$_Role _$$_RoleFromJson(Map<String, dynamic> json) => _$_Role(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_RoleToJson(_$_Role instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
