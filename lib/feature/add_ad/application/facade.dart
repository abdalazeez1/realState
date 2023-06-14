import 'package:injectable/injectable.dart';
import 'package:realstate/common/constant/params.dart';
import 'package:realstate/common/constant/response_wrapper.dart';
import 'package:realstate/common/network/result.dart';

import '../domain/repo/repo.dart';
import '../infrastructure/model/add_add.dart';

@injectable
class AddAdFacade {
  final IAddAdRepo _repo;

  AddAdFacade({required IAddAdRepo repo}) : _repo = repo;

  Future<Result<ResponseWrapper<AddAd>>> addAd({required ParamsWrapper paramsWrapper}) async =>
      _repo.addAd(paramsWrapper: paramsWrapper);

 }
