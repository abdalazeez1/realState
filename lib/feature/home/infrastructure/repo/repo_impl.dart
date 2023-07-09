import 'package:injectable/injectable.dart';
import 'package:realstate/common/constant/params.dart';
import 'package:realstate/common/network/result.dart';
import 'package:realstate/feature/home/infrastructure/model/post_model.dart';

import '../../../../common/constant/response_wrapper.dart';
import '../../../../common/network/api_utils.dart';
import '../../domain/repo/repo.dart';
import '../data_source/remote/remote.dart';
@Injectable(as: IHomeRepo)
class HomeRepoImpl implements IHomeRepo {
  final HomeRemote _remote;


  HomeRepoImpl({required HomeRemote remote}) : _remote = remote;


  @override
  Future<Result<ResponseWrapper<PostModel>>> getPosts() {
    return toApiResult(() async {
      final result = await _remote.getPostsModel();
      return result;
    });
  }


}