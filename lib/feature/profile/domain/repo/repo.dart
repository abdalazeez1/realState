import 'package:realstate/common/constant/params.dart';

import '../../../../common/constant/response_wrapper.dart';
import '../../../../common/network/result.dart';
import '../../infrastructure/model/profile.dart';

abstract class IProfileRepo {
  Future<Result<ResponseWrapper<Profile>>> profile({required ParamsWrapper paramsWrapper}) ;

}