import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:realstate/common/constant/params.dart';
import 'package:realstate/common/constant/response_wrapper.dart';
import 'package:realstate/feature/add_ad/infrastructure/model/add_add.dart';

import '../../../../../common/network/api_utils.dart';
import '../../../../../common/network/route.dart';

@injectable
class AddAdRemote {
  final Dio _dio;

  AddAdRemote(this._dio);

  Future<ResponseWrapper<AddAd>> addAd({required ParamsWrapper paramsWrapper}) async {
    return throwAppException(
      () async {
        final response = await _dio.get("", queryParameters: paramsWrapper.params);
        return ResponseWrapper.fromJson(response.data, (json) => AddAd());
      },
    );
  }
}
