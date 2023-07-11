import 'package:injectable/injectable.dart';
import 'package:realstate/common/constant/params.dart';
import 'package:realstate/common/constant/response_wrapper.dart';
import 'package:realstate/common/network/result.dart';
import 'package:realstate/feature/home/infrastructure/model/post_model/post_model.dart';

import '../domain/repo/repo.dart';

@injectable
class HomeFacade {
  final IHomeRepo _repo;

  HomeFacade({required IHomeRepo repo}) : _repo = repo;

  Future<Result<ResponseWrapper<List<PostModel>>>> getPosts() async => _repo.getPosts();
}
