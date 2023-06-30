import 'package:realstate/feature/ad_details/infrastructure/models/post.dart';

abstract class AdDetailsRepo {
  Future<Post> getPost(String id);
}
