import '../../data/data_source/api/result.dart';
import '../model/post.dart';

abstract class ContentsApiRepository {
  Future<Result<List<Post>>> fetch();
  // Future<BannerAd> loadStaticBannerAd();
}
