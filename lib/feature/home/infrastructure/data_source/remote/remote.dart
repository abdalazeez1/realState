import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:realstate/common/constant/params.dart';
import 'package:realstate/common/constant/response_wrapper.dart';
import 'package:realstate/feature/home/infrastructure/model/category_model/category.dart';

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
        final response = await _dio.get(APIRoutes.home.getPostsHome);
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

  Future<ResponseWrapper<List<PostModel>>> getPostsModelOfCategory(int id) async {
    return throwAppException(
      () async {
        //todo change endpoint when backend publish
        final response = await _dio.get(APIRoutes.home.getPostsHome);
        // return ResponseWrapper.fromJson(response.data, (json) => PostModel.fromJson(json as Map<String, dynamic>));
        return ResponseWrapper.fromJson(response.data['data'], (json) {
          return List.from((response.data['data']['posts'] as List<dynamic>)
              .map((e) => PostModel.fromJson(e as Map<String, dynamic>)));
          // return PostModel.fromListJson(json as List<dynamic>);
        });
      },
    );
  }

  Future<ResponseWrapper<List<CategoryModel>>> getCategoryModel() async {
    return throwAppException(
      () async {
        // final response = await _dio.get(APIRoutes.home.getCategoriesHome);
        // final response = await _dio.get(APIRoutes.home.getCategoriesHome);
        //todo use fake return until publish backend
        return ResponseWrapper.fromJson({
          "message": "successfully",
          "success": true,
          "data": {
            "catecories": [
              {"id": 1, "name": "منزل", "image_url": null, "description": null},
              {"id": 2, "name": "محل", "image_url": null, "description": null},
              {"id": 3, "name": "updated name", "image_url": null, "description": "updated description"},
              {"id": 4, "name": "ارض", "image_url": null, "description": null},
              {
                "id": 5,
                "name": "\"new catecory hh\"",
                "image_url": "attachments/categories/16891915006502459.jpg",
                "description": "\"from postman\""
              }
            ]
          }
        }, (json) {
          // print(response.data['data']['catecories'][0]);
          return List.from(([
            {"id": 1, "name": "منزل", "image_url": null, "description": null},
            {"id": 2, "name": "محل", "image_url": null, "description": null},
            {"id": 3, "name": "updated name", "image_url": null, "description": "updated description"},
            {"id": 4, "name": "ارض", "image_url": null, "description": null},
            {
              "id": 5,
              "name": "\"new catecory hh\"",
              "image_url": "attachments/categories/16891915006502459.jpg",
              "description": "\"from postman\""
            }
          ] as List<dynamic>)
              .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>)));
          // return PostModel.fromListJson(json as List<dynamic>);
        });

        ///real return when backend publish
        // return ResponseWrapper.fromJson(response.data['data'], (json) {
        //   print(response.data['data']['catecories'][0]);
        //   return List.from((response.data['data']['catecories'] as List<dynamic>)
        //       .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>)));
        //   // return PostModel.fromListJson(json as List<dynamic>);
        // });
      },
    );
  }
}
