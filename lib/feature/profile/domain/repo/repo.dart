import 'package:realstate/common/constant/params.dart';

import '../../../../common/constant/response_wrapper.dart';
import '../../../../common/network/result.dart';
import '../../infrastructure/model/user.dart';

abstract class IProfileRepo {
  Future<Result<ResponseWrapper<User>>> profile() ;

}