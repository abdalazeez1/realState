

import 'package:injectable/injectable.dart';
import 'package:realstate/common/constant/params.dart';
import 'package:realstate/common/network/result.dart';

import '../../../../common/constant/response_wrapper.dart';
import '../../../../common/network/api_utils.dart';
import '../../domain/repo/repo.dart';
import '../data_source/remote/remote.dart';
import '../model/login_response.dart';
@Injectable(as: IAuthRepo)
class AuthRepoImpl implements IAuthRepo {
  final AuthRemote _remote;


  AuthRepoImpl({required AuthRemote remote}) : _remote = remote;


  @override
  Future<Result<ResponseWrapper<LoginResponse>>> login({required ParamsWrapper paramsWrapper}) {
    return toApiResult(() async {
      final result = await _remote.login( paramsWrapper: paramsWrapper );
      return result;
    });
  }

  @override
  Future<Result<ResponseWrapper<LoginResponse>>> logout({required ParamsWrapper paramsWrapper}) {
    return toApiResult(() async {
      final result = await _remote.logout();
      return result;
    });
  }

  @override
  Future<Result<ResponseWrapper<LoginResponse>>> register({required ParamsWrapper paramsWrapper}) {
    return toApiResult(() async {
      final result = await _remote.register( paramsWrapper: paramsWrapper );
      return result;
    });
  }

  @override
  Future<Result<ResponseWrapper<LoginResponse>>> verifyRegister({required ParamsWrapper paramsWrapper}) {
    return toApiResult(() async {
      final result = await _remote.verifyRegister( paramsWrapper: paramsWrapper );
      return result;
    });
  }

}
