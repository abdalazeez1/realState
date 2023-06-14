import 'package:realstate/common/constant/params.dart';

import '../../../../common/constant/response_wrapper.dart';
import '../../../../common/network/result.dart';
import '../../infrastructure/model/search.dart';

abstract class ISearchRepo {
  Future<Result<ResponseWrapper<Search>>> search({required ParamsWrapper paramsWrapper}) ;

}