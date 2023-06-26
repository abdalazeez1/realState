

import 'package:injectable/injectable.dart';
import 'package:realstate/common/constant/params.dart';
import 'package:realstate/common/network/result.dart';

import '../../../../common/constant/response_wrapper.dart';
import '../../../../common/network/api_utils.dart';
import '../../../auth/domain/repo/repo.dart';
import '../../domain/repo/repo.dart';
import '../data_source/remote/remote.dart';
import '../model/add_add.dart';
@Injectable(as: IAddAdRepo)
class AddAdRepoImpl implements IAddAdRepo {
  final AddAdRemote _remote;


  AddAdRepoImpl({required AddAdRemote remote}) : _remote = remote;


  @override
  Future<Result<ResponseWrapper<AddAd>>> addAd({required ParamsWrapper paramsWrapper}) {
    return toApiResult(() async {
      final result = await _remote.addAd( paramsWrapper: paramsWrapper );
      return result;
    });
  }


}
