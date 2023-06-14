import 'package:injectable/injectable.dart';
import 'package:realstate/common/constant/params.dart';
import 'package:realstate/common/constant/response_wrapper.dart';
import 'package:realstate/common/network/result.dart';

import '../domain/repo/repo.dart';
import '../infrastructure/model/profile.dart';

@injectable
class ProfileFacade {
  final IProfileRepo _repo;

  ProfileFacade({required IProfileRepo repo}) : _repo = repo;

  Future<Result<ResponseWrapper<Profile>>> profile({required ParamsWrapper paramsWrapper}) async =>
      _repo.profile(paramsWrapper: paramsWrapper);

 }
