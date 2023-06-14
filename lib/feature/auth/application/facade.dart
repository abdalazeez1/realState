import 'package:injectable/injectable.dart';
import 'package:realstate/common/constant/params.dart';
import 'package:realstate/common/constant/response_wrapper.dart';
import 'package:realstate/common/network/result.dart';
import 'package:realstate/feature/auth/infrastructure/model/login_response.dart';

import '../domain/repo/repo.dart';

@injectable
class AuthFacade {
  final IAuthRepo _repo;

  AuthFacade({required IAuthRepo repo}) : _repo = repo;

  Future<Result<ResponseWrapper<LoginResponse>>> login({required ParamsWrapper paramsWrapper}) async =>
      _repo.login(paramsWrapper: paramsWrapper);

  Future<Result<ResponseWrapper<LoginResponse>>> logout({required ParamsWrapper paramsWrapper}) async =>
      _repo.logout(paramsWrapper: paramsWrapper);

  Future<Result<ResponseWrapper<LoginResponse>>> register({required ParamsWrapper paramsWrapper}) async =>
      _repo.register(paramsWrapper: paramsWrapper);

  Future<Result<ResponseWrapper<LoginResponse>>> verifyRegister({required ParamsWrapper paramsWrapper}) async =>
      _repo.verifyRegister(paramsWrapper: paramsWrapper);
}

