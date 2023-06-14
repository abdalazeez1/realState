import 'package:injectable/injectable.dart';
import 'package:realstate/common/constant/params.dart';
import 'package:realstate/common/constant/response_wrapper.dart';
import 'package:realstate/common/network/result.dart';

import '../domain/repo/repo.dart';
import '../infrastructure/model/search.dart';

@injectable
class SearchFacade {
  final ISearchRepo _repo;

  SearchFacade({required ISearchRepo repo}) : _repo = repo;

  Future<Result<ResponseWrapper<Search>>> search({required ParamsWrapper paramsWrapper}) async =>
      _repo.search(paramsWrapper: paramsWrapper);

 }
