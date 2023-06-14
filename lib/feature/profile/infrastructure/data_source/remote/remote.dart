import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:realstate/common/constant/params.dart';
import 'package:realstate/common/constant/response_wrapper.dart';

import '../../../../../common/network/api_utils.dart';
import '../../../../../common/network/route.dart';
import '../../model/profile.dart';

@injectable
class ProfileRemote {
  final Dio _dio;

  ProfileRemote(this._dio);

  Future<ResponseWrapper<Profile>> profile({required ParamsWrapper paramsWrapper}) async {
    return throwAppException(
      () async {
        final response = await _dio.get("APIRoutes", queryParameters: paramsWrapper.params);
        return ResponseWrapper.fromJson(response.data, (json) => Profile());
      },
    );
  }
}
