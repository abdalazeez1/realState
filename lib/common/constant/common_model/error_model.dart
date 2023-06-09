// To parse this JSON data, do
//
//     final errorModel = errorModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'error_model.freezed.dart';

part 'error_model.g.dart';

ErrorModel errorModelFromJson(String str) => ErrorModel.fromJson(json.decode(str));

String errorModelToJson(ErrorModel data) => json.encode(data.toJson());

@freezed
abstract class ErrorModel with _$ErrorModel {
  const factory ErrorModel({
    String? message,
    bool? success,
    List<String>? errors,
  }) = _ErrorModel;


  factory ErrorModel.fromJson(Map<String, dynamic> json) => _$ErrorModelFromJson(json);
}
