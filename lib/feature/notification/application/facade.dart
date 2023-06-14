import 'package:injectable/injectable.dart';
import 'package:realstate/common/constant/params.dart';
import 'package:realstate/common/constant/response_wrapper.dart';
import 'package:realstate/common/network/result.dart';

import '../domain/repo/repo.dart';
import '../infrastructure/model/notification.dart';

@injectable
class NotificationFacade {
  final INotificationRepo _repo;

  NotificationFacade({required INotificationRepo repo}) : _repo = repo;

  Future<Result<ResponseWrapper<Notification>>> getNotification({required ParamsWrapper paramsWrapper}) async =>
      _repo.getNotification(paramsWrapper: paramsWrapper);

 }
