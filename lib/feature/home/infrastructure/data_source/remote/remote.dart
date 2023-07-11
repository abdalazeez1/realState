import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:realstate/common/constant/params.dart';
import 'package:realstate/common/constant/response_wrapper.dart';

import '../../../../../common/network/api_utils.dart';
import '../../../../../common/network/route.dart';
import '../../model/post_model/post_model.dart';

@injectable
class HomeRemote {
  final Dio _dio;

  HomeRemote(this._dio);

  Future<ResponseWrapper<List<PostModel>>> getPostsModel() async {
    return throwAppException(
      () async {
        final response = await _dio.get(APIRoutes.home.getHome);
        // return ResponseWrapper.fromJson(response.data, (json) => PostModel.fromJson(json as Map<String, dynamic>));
        return ResponseWrapper.fromJson(response.data['data'], (json) {
          print(response.data['data']['posts'][0]);
          return List.from((response.data['data']['posts'] as List<dynamic>)
              .map((e) => PostModel.fromJson(e as Map<String, dynamic>)));
          // return PostModel.fromListJson(json as List<dynamic>);
        });
      },
    );
  }
}
