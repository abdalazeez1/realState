import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:realstate/common/constant/params.dart';
import 'package:realstate/common/constant/response_wrapper.dart';

import '../../../../../common/network/api_utils.dart';
import '../../model/search.dart';

@injectable
class SearchRemote {
  final Dio _dio;

  SearchRemote(this._dio);

  Future<ResponseWrapper<Search>> search({required ParamsWrapper paramsWrapper}) async {
    return throwAppException(
      () async {
        final response = await _dio.get("APIRoutes", queryParameters: paramsWrapper.params);
        return ResponseWrapper.fromJson(response.data, (json) => Search());
      },
    );
  }
}
