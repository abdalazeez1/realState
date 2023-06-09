import 'package:realstate/common/constant/params.dart';

import '../../../../common/constant/response_wrapper.dart';
import '../../../../common/network/result.dart';
import '../../infrastructure/model/login_response.dart';

abstract class IAuthRepo {
  Future<Result<ResponseWrapper<LoginResponse>>> login({required ParamsWrapper paramsWrapper}) ;

}