// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostModel _$PostModelFromJson(Map<String, dynamic> json) {
  return _PostModel.fromJson(json);
}

/// @nodoc
mixin _$PostModel {
  int? get id => throw _privateConstructorUsedError;
  int? get user_id => throw _privateConstructorUsedError;
  int? get area_id => throw _privateConstructorUsedError;
  int? get catecory_id => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  int? get available => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  int? get diffInDay => throw _privateConstructorUsedError;
  AuthenticatedUser get his_user => throw _privateConstructorUsedError;
  AreaPost? get area => throw _privateConstructorUsedError;
  dynamic? get category => throw _privateConstructorUsedError;
  List<String?> get comments => throw _privateConstructorUsedError;
  List<String?> get images => throw _privateConstructorUsedError;
  List<FeaturesPost?> get informations => throw _privateConstructorUsedError;
  List<TypesPost?> get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostModelCopyWith<PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) then) =
      _$PostModelCopyWithImpl<$Res, PostModel>;
  @useResult
  $Res call(
      {int? id,
      int? user_id,
      int? area_id,
      int? catecory_id,
      String? description,
      String? longitude,
      String? latitude,
      int? available,
      String? created_at,
      String? updated_at,
      int? diffInDay,
      AuthenticatedUser his_user,
      AreaPost? area,
      dynamic? category,
      List<String?> comments,
      List<String?> images,
      List<FeaturesPost?> informations,
      List<TypesPost?> types});

  $AuthenticatedUserCopyWith<$Res> get his_user;
  $AreaPostCopyWith<$Res>? get area;
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res, $Val extends PostModel>
    implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user_id = freezed,
    Object? area_id = freezed,
    Object? catecory_id = freezed,
    Object? description = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? available = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? diffInDay = freezed,
    Object? his_user = null,
    Object? area = freezed,
    Object? category = freezed,
    Object? comments = null,
    Object? images = null,
    Object? informations = null,
    Object? types = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      area_id: freezed == area_id
          ? _value.area_id
          : area_id // ignore: cast_nullable_to_non_nullable
              as int?,
      catecory_id: freezed == catecory_id
          ? _value.catecory_id
          : catecory_id // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      diffInDay: freezed == diffInDay
          ? _value.diffInDay
          : diffInDay // ignore: cast_nullable_to_non_nullable
              as int?,
      his_user: null == his_user
          ? _value.his_user
          : his_user // ignore: cast_nullable_to_non_nullable
              as AuthenticatedUser,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as AreaPost?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      informations: null == informations
          ? _value.informations
          : informations // ignore: cast_nullable_to_non_nullable
              as List<FeaturesPost?>,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<TypesPost?>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthenticatedUserCopyWith<$Res> get his_user {
    return $AuthenticatedUserCopyWith<$Res>(_value.his_user, (value) {
      return _then(_value.copyWith(his_user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AreaPostCopyWith<$Res>? get area {
    if (_value.area == null) {
      return null;
    }

    return $AreaPostCopyWith<$Res>(_value.area!, (value) {
      return _then(_value.copyWith(area: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PostModelCopyWith<$Res> implements $PostModelCopyWith<$Res> {
  factory _$$_PostModelCopyWith(
          _$_PostModel value, $Res Function(_$_PostModel) then) =
      __$$_PostModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? user_id,
      int? area_id,
      int? catecory_id,
      String? description,
      String? longitude,
      String? latitude,
      int? available,
      String? created_at,
      String? updated_at,
      int? diffInDay,
      AuthenticatedUser his_user,
      AreaPost? area,
      dynamic? category,
      List<String?> comments,
      List<String?> images,
      List<FeaturesPost?> informations,
      List<TypesPost?> types});

  @override
  $AuthenticatedUserCopyWith<$Res> get his_user;
  @override
  $AreaPostCopyWith<$Res>? get area;
}

/// @nodoc
class __$$_PostModelCopyWithImpl<$Res>
    extends _$PostModelCopyWithImpl<$Res, _$_PostModel>
    implements _$$_PostModelCopyWith<$Res> {
  __$$_PostModelCopyWithImpl(
      _$_PostModel _value, $Res Function(_$_PostModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user_id = freezed,
    Object? area_id = freezed,
    Object? catecory_id = freezed,
    Object? description = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? available = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? diffInDay = freezed,
    Object? his_user = null,
    Object? area = freezed,
    Object? category = freezed,
    Object? comments = null,
    Object? images = null,
    Object? informations = null,
    Object? types = null,
  }) {
    return _then(_$_PostModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      area_id: freezed == area_id
          ? _value.area_id
          : area_id // ignore: cast_nullable_to_non_nullable
              as int?,
      catecory_id: freezed == catecory_id
          ? _value.catecory_id
          : catecory_id // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      diffInDay: freezed == diffInDay
          ? _value.diffInDay
          : diffInDay // ignore: cast_nullable_to_non_nullable
              as int?,
      his_user: null == his_user
          ? _value.his_user
          : his_user // ignore: cast_nullable_to_non_nullable
              as AuthenticatedUser,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as AreaPost?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      informations: null == informations
          ? _value._informations
          : informations // ignore: cast_nullable_to_non_nullable
              as List<FeaturesPost?>,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<TypesPost?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostModel implements _PostModel {
  const _$_PostModel(
      {required this.id,
      required this.user_id,
      required this.area_id,
      required this.catecory_id,
      required this.description,
      required this.longitude,
      required this.latitude,
      required this.available,
      required this.created_at,
      required this.updated_at,
      required this.diffInDay,
      required this.his_user,
      required this.area,
      required this.category,
      required final List<String?> comments,
      required final List<String?> images,
      required final List<FeaturesPost?> informations,
      required final List<TypesPost?> types})
      : _comments = comments,
        _images = images,
        _informations = informations,
        _types = types;

  factory _$_PostModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostModelFromJson(json);

  @override
  final int? id;
  @override
  final int? user_id;
  @override
  final int? area_id;
  @override
  final int? catecory_id;
  @override
  final String? description;
  @override
  final String? longitude;
  @override
  final String? latitude;
  @override
  final int? available;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final int? diffInDay;
  @override
  final AuthenticatedUser his_user;
  @override
  final AreaPost? area;
  @override
  final dynamic? category;
  final List<String?> _comments;
  @override
  List<String?> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  final List<String?> _images;
  @override
  List<String?> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<FeaturesPost?> _informations;
  @override
  List<FeaturesPost?> get informations {
    if (_informations is EqualUnmodifiableListView) return _informations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_informations);
  }

  final List<TypesPost?> _types;
  @override
  List<TypesPost?> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  String toString() {
    return 'PostModel(id: $id, user_id: $user_id, area_id: $area_id, catecory_id: $catecory_id, description: $description, longitude: $longitude, latitude: $latitude, available: $available, created_at: $created_at, updated_at: $updated_at, diffInDay: $diffInDay, his_user: $his_user, area: $area, category: $category, comments: $comments, images: $images, informations: $informations, types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.area_id, area_id) || other.area_id == area_id) &&
            (identical(other.catecory_id, catecory_id) ||
                other.catecory_id == catecory_id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.diffInDay, diffInDay) ||
                other.diffInDay == diffInDay) &&
            (identical(other.his_user, his_user) ||
                other.his_user == his_user) &&
            (identical(other.area, area) || other.area == area) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._informations, _informations) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      user_id,
      area_id,
      catecory_id,
      description,
      longitude,
      latitude,
      available,
      created_at,
      updated_at,
      diffInDay,
      his_user,
      area,
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(_comments),
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_informations),
      const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostModelCopyWith<_$_PostModel> get copyWith =>
      __$$_PostModelCopyWithImpl<_$_PostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostModelToJson(
      this,
    );
  }
}

abstract class _PostModel implements PostModel {
  const factory _PostModel(
      {required final int? id,
      required final int? user_id,
      required final int? area_id,
      required final int? catecory_id,
      required final String? description,
      required final String? longitude,
      required final String? latitude,
      required final int? available,
      required final String? created_at,
      required final String? updated_at,
      required final int? diffInDay,
      required final AuthenticatedUser his_user,
      required final AreaPost? area,
      required final dynamic? category,
      required final List<String?> comments,
      required final List<String?> images,
      required final List<FeaturesPost?> informations,
      required final List<TypesPost?> types}) = _$_PostModel;

  factory _PostModel.fromJson(Map<String, dynamic> json) =
      _$_PostModel.fromJson;

  @override
  int? get id;
  @override
  int? get user_id;
  @override
  int? get area_id;
  @override
  int? get catecory_id;
  @override
  String? get description;
  @override
  String? get longitude;
  @override
  String? get latitude;
  @override
  int? get available;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  int? get diffInDay;
  @override
  AuthenticatedUser get his_user;
  @override
  AreaPost? get area;
  @override
  dynamic? get category;
  @override
  List<String?> get comments;
  @override
  List<String?> get images;
  @override
  List<FeaturesPost?> get informations;
  @override
  List<TypesPost?> get types;
  @override
  @JsonKey(ignore: true)
  _$$_PostModelCopyWith<_$_PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}
