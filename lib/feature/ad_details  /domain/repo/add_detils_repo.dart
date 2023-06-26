import 'package:realstate/feature/ad_details%20%20/infrastructure/models/post.dart';

abstract class AdDetailsRepo {
  Future<Post> getPost(String id);
}
