import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:realstate/common/constant/params.dart';
import 'package:realstate/common/constant/response_wrapper.dart';
import 'package:realstate/common/network/result.dart';
import 'package:realstate/feature/auth/infrastructure/model/login_response.dart';

import '../../../../../common/network/api_utils.dart';
import '../../../../../common/network/route.dart';

@injectable
class AuthRemote {
  final Dio _dio;

  AuthRemote(this._dio);

  Future<ResponseWrapper<LoginResponse>> login({required ParamsWrapper paramsWrapper}) async {
    return throwAppException(
      () async {
        final response = await _dio.get(APIRoutes.auth.login, queryParameters: paramsWrapper.params);
        return ResponseWrapper.fromJson(response.data, (json) => LoginResponse.fromJson(json as Map<String, dynamic>));
      },
    );
  }
  Future<ResponseWrapper<LoginResponse>> logout() async {
    return throwAppException(
      () async {
        final response = await _dio.get(APIRoutes.auth.logout);
        return ResponseWrapper.fromJson(response.data, (json) => LoginResponse.fromJson(json as Map<String, dynamic>));
      },
    );
  }
}
