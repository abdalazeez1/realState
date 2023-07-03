import 'package:injectable/injectable.dart';
import 'package:realstate/common/constant/params.dart';
import 'package:realstate/common/constant/response_wrapper.dart';
import 'package:realstate/common/network/result.dart';

import '../domain/repo/repo.dart';
import '../infrastructure/model/user.dart';

@injectable
class ProfileFacade {
  final IProfileRepo _repo;

  ProfileFacade({required IProfileRepo repo}) : _repo = repo;

  Future<Result<ResponseWrapper<User>>> profile() async =>
      _repo.profile();

 }
