import 'package:realstate/common/constant/params.dart';

import '../../../../common/constant/response_wrapper.dart';
import '../../../../common/network/result.dart';
import '../../infrastructure/model/notification.dart';

abstract class INotificationRepo {
  Future<Result<ResponseWrapper<Notification>>> getNotification({required ParamsWrapper paramsWrapper}) ;

}