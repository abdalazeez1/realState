

import 'package:injectable/injectable.dart';
import 'package:realstate/common/constant/params.dart';
import 'package:realstate/common/network/result.dart';

import '../../../../common/constant/response_wrapper.dart';
import '../../../../common/network/api_utils.dart';
import '../../../auth/domain/repo/repo.dart';
import '../../domain/repo/repo.dart';
import '../data_source/remote/remote.dart';
import '../model/search.dart';
@Injectable(as: ISearchRepo)
class SearchRepoImpl implements ISearchRepo {
  final SearchRemote _remote;


  SearchRepoImpl({required SearchRemote remote}) : _remote = remote;


  @override
  Future<Result<ResponseWrapper<Search>>> search({required ParamsWrapper paramsWrapper}) {
    return toApiResult(() async {
      final result = await _remote.search( paramsWrapper: paramsWrapper );
      return result;
    });
  }


}
