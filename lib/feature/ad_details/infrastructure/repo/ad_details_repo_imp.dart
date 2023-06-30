import 'package:realstate/feature/ad_details%20%20/domain/repo/add_detils_repo.dart';
import 'package:realstate/feature/ad_details%20%20/infrastructure/datasources/remote_datasource.dart';
import 'package:realstate/feature/ad_details%20%20/infrastructure/models/post.dart';

class AdDetailsRepoIMP implements AdDetailsRepo {
  final AdDetailsRemoteDataSource dataSource;
  AdDetailsRepoIMP(this.dataSource);
  @override
  Future<Post> getPost(String id) => dataSource.getPostDetails(id);
}
