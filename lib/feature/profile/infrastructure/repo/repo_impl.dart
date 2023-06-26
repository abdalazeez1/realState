

import 'package:injectable/injectable.dart';
import 'package:realstate/common/constant/params.dart';
import 'package:realstate/common/network/result.dart';

import '../../../../common/constant/response_wrapper.dart';
import '../../../../common/network/api_utils.dart';
import '../../../auth/domain/repo/repo.dart';
import '../../domain/repo/repo.dart';
import '../data_source/remote/remote.dart';
import '../model/profile.dart';
@Injectable(as: IProfileRepo)
class ProfileRepoImpl implements IProfileRepo {
  final ProfileRemote _remote;


  ProfileRepoImpl({required ProfileRemote remote}) : _remote = remote;


  @override
  Future<Result<ResponseWrapper<Profile>>> profile({required ParamsWrapper paramsWrapper}) {
    return toApiResult(() async {
      final result = await _remote.profile( paramsWrapper: paramsWrapper );
      return result;
    });
  }


}
