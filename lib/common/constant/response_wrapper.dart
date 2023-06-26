import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_wrapper.freezed.dart';
part 'response_wrapper.g.dart';

@Freezed(genericArgumentFactories: true)
sealed class ResponseWrapper<T> with _$ResponseWrapper<T>{
  const factory ResponseWrapper ({
    final String? status,
    final T? data,
  }) = _ResponseWrapper;

  factory ResponseWrapper.fromJson(Map<String, dynamic> json,
      T Function(Object? json) fromJsonT)
  => _$ResponseWrapperFromJson(json, fromJsonT);
}
