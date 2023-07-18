import 'package:realstate/common/constant/params.dart';
import 'package:realstate/feature/home/infrastructure/model/category_model/category.dart';

import '../../../../common/constant/response_wrapper.dart';
import '../../../../common/network/result.dart';
import '../../infrastructure/model/post_model/post_model.dart';

abstract class IHomeRepo {
  Future<Result<ResponseWrapper<List<PostModel>>>> getPosts() ;
  Future<Result<ResponseWrapper<List<PostModel>>>> getPostsOfCategory(int id) ;
  Future<Result<ResponseWrapper<List<CategoryModel>>>> getCategories() ;

}