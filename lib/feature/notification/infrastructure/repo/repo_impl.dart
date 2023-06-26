

import 'package:injectable/injectable.dart';
import 'package:realstate/common/constant/params.dart';
import 'package:realstate/common/network/result.dart';

import '../../../../common/constant/response_wrapper.dart';
import '../../../../common/network/api_utils.dart';
import '../../../auth/domain/repo/repo.dart';
import '../../domain/repo/repo.dart';
import '../data_source/remote/remote.dart';
import '../model/notification.dart';
@Injectable(as: INotificationRepo)
class NotificationRepoImpl implements INotificationRepo {
  final NotificationRemote _remote;


  NotificationRepoImpl({required NotificationRemote remote}) : _remote = remote;


  @override
  Future<Result<ResponseWrapper<Notification>>> getNotification({required ParamsWrapper paramsWrapper}) {
    return toApiResult(() async {
      final result = await _remote.getNotification( paramsWrapper: paramsWrapper );
      return result;
    });
  }


}
