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

  Future<Future<Result<ResponseWrapper<LoginResponse>>>> login(
          {required String email, required String password}) async =>
      _repo.login(paramsWrapper: ParamsWrapper({"email": email, "password": password}));
}
