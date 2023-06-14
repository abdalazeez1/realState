import 'package:realstate/common/constant/params.dart';

import '../../../../common/constant/response_wrapper.dart';
import '../../../../common/network/result.dart';
import '../../infrastructure/model/add_add.dart';

abstract class IAddAdRepo {
  Future<Result<ResponseWrapper<AddAd>>> addAd({required ParamsWrapper paramsWrapper}) ;

}