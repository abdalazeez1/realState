// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'features.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeaturesPost _$FeaturesPostFromJson(Map<String, dynamic> json) {
  return _FeaturesPost.fromJson(json);
}

/// @nodoc
mixin _$FeaturesPost {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeaturesPostCopyWith<FeaturesPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturesPostCopyWith<$Res> {
  factory $FeaturesPostCopyWith(
          FeaturesPost value, $Res Function(FeaturesPost) then) =
      _$FeaturesPostCopyWithImpl<$Res, FeaturesPost>;
  @useResult
  $Res call({int? id, String? name, String? value});
}

/// @nodoc
class _$FeaturesPostCopyWithImpl<$Res, $Val extends FeaturesPost>
    implements $FeaturesPostCopyWith<$Res> {
  _$FeaturesPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeaturesPostCopyWith<$Res>
    implements $FeaturesPostCopyWith<$Res> {
  factory _$$_FeaturesPostCopyWith(
          _$_FeaturesPost value, $Res Function(_$_FeaturesPost) then) =
      __$$_FeaturesPostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? value});
}

/// @nodoc
class __$$_FeaturesPostCopyWithImpl<$Res>
    extends _$FeaturesPostCopyWithImpl<$Res, _$_FeaturesPost>
    implements _$$_FeaturesPostCopyWith<$Res> {
  __$$_FeaturesPostCopyWithImpl(
      _$_FeaturesPost _value, $Res Function(_$_FeaturesPost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_FeaturesPost(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeaturesPost implements _FeaturesPost {
  const _$_FeaturesPost(
      {required this.id, required this.name, required this.value});

  factory _$_FeaturesPost.fromJson(Map<String, dynamic> json) =>
      _$$_FeaturesPostFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? value;

  @override
  String toString() {
    return 'FeaturesPost(id: $id, name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeaturesPost &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeaturesPostCopyWith<_$_FeaturesPost> get copyWith =>
      __$$_FeaturesPostCopyWithImpl<_$_FeaturesPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeaturesPostToJson(
      this,
    );
  }
}

abstract class _FeaturesPost implements FeaturesPost {
  const factory _FeaturesPost(
      {required final int? id,
      required final String? name,
      required final String? value}) = _$_FeaturesPost;

  factory _FeaturesPost.fromJson(Map<String, dynamic> json) =
      _$_FeaturesPost.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_FeaturesPostCopyWith<_$_FeaturesPost> get copyWith =>
      throw _privateConstructorUsedError;
}
