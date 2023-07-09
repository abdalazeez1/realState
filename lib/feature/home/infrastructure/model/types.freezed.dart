// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TypesPost _$TypesPostFromJson(Map<String, dynamic> json) {
  return _TypesPost.fromJson(json);
}

/// @nodoc
mixin _$TypesPost {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String? get start_date => throw _privateConstructorUsedError;
  String? get end_date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypesPostCopyWith<TypesPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypesPostCopyWith<$Res> {
  factory $TypesPostCopyWith(TypesPost value, $Res Function(TypesPost) then) =
      _$TypesPostCopyWithImpl<$Res, TypesPost>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      double? price,
      String? start_date,
      String? end_date});
}

/// @nodoc
class _$TypesPostCopyWithImpl<$Res, $Val extends TypesPost>
    implements $TypesPostCopyWith<$Res> {
  _$TypesPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? start_date = freezed,
    Object? end_date = freezed,
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      start_date: freezed == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String?,
      end_date: freezed == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TypesPostCopyWith<$Res> implements $TypesPostCopyWith<$Res> {
  factory _$$_TypesPostCopyWith(
          _$_TypesPost value, $Res Function(_$_TypesPost) then) =
      __$$_TypesPostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      double? price,
      String? start_date,
      String? end_date});
}

/// @nodoc
class __$$_TypesPostCopyWithImpl<$Res>
    extends _$TypesPostCopyWithImpl<$Res, _$_TypesPost>
    implements _$$_TypesPostCopyWith<$Res> {
  __$$_TypesPostCopyWithImpl(
      _$_TypesPost _value, $Res Function(_$_TypesPost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? start_date = freezed,
    Object? end_date = freezed,
  }) {
    return _then(_$_TypesPost(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      start_date: freezed == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String?,
      end_date: freezed == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TypesPost implements _TypesPost {
  const _$_TypesPost(
      {required this.id,
      required this.name,
      required this.price,
      required this.start_date,
      required this.end_date});

  factory _$_TypesPost.fromJson(Map<String, dynamic> json) =>
      _$$_TypesPostFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final double? price;
  @override
  final String? start_date;
  @override
  final String? end_date;

  @override
  String toString() {
    return 'TypesPost(id: $id, name: $name, price: $price, start_date: $start_date, end_date: $end_date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TypesPost &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.start_date, start_date) ||
                other.start_date == start_date) &&
            (identical(other.end_date, end_date) ||
                other.end_date == end_date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, price, start_date, end_date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TypesPostCopyWith<_$_TypesPost> get copyWith =>
      __$$_TypesPostCopyWithImpl<_$_TypesPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TypesPostToJson(
      this,
    );
  }
}

abstract class _TypesPost implements TypesPost {
  const factory _TypesPost(
      {required final int? id,
      required final String? name,
      required final double? price,
      required final String? start_date,
      required final String? end_date}) = _$_TypesPost;

  factory _TypesPost.fromJson(Map<String, dynamic> json) =
      _$_TypesPost.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  double? get price;
  @override
  String? get start_date;
  @override
  String? get end_date;
  @override
  @JsonKey(ignore: true)
  _$$_TypesPostCopyWith<_$_TypesPost> get copyWith =>
      throw _privateConstructorUsedError;
}
