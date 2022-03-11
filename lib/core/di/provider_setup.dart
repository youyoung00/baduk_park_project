import 'package:baduk_park/domain/use_case/add_post_use_case.dart';
import 'package:baduk_park/domain/use_case/delete_post_use_case.dart';
import 'package:baduk_park/domain/use_case/get_post_use_case.dart';
import 'package:baduk_park/domain/use_case/update_post_use_case.dart';
import 'package:baduk_park/domain/use_case/use_cases.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../data/data_source/api/post_api_data_source.dart';
import '../../data/repository/post_remote_repository_impl.dart';
import '../../domain/repository/contents_api_repository.dart';
import '../../domain/use_case/get_inline_banner_ad_use_case.dart';
import '../../domain/use_case/get_posts_use_case.dart';
import '../../domain/use_case/get_static_banner_ad_use_case.dart';
import '../../presentation/view_model/board1_view_model.dart';
import '../../presentation/view_model/view_view_model.dart';

// 1. Provider 전체
List<SingleChildWidget> globalProviders = [
  ...independentModels,
  ...dependentModels,
  ...viewModels,
];

// 2. 독립적인 객체. 다른 클래스에 의존하지 않는 Model.
List<SingleChildWidget> independentModels = [
  Provider<http.Client>(
    create: (context) => http.Client(),
  ),
  Provider<AdRequest>(
    create: (context) => const AdRequest(),
  ),
];

// 3. 2번 객체에 의존성 있는 객체. 2에 등록한 클래스에 의존하는 Model.
List<SingleChildWidget> dependentModels = [
  ProxyProvider<http.Client, PostApi>(
    update: (context, client, _) => PostApi(client),
  ),
  ProxyProvider<PostApi, ContentsApiRepository>(
    update: (context, postApi, _) => BoardApiRepositoryImpl(postApi),
  ),
  ProxyProvider<ContentsApiRepository, UseCases>(
    update: (context, repository, _) => UseCases(
      updatePost: UpdatePostUseCase(repository),
      getPost: GetPostUseCase(repository),
      getPosts: GetPostsUseCase(repository),
      deletePost: DeletePostUseCase(repository),
      addPost: AddPostUseCase(repository),
    ),
  ),
  ProxyProvider<AdRequest, GetStaticBannerAdUseCase>(
    update: (context, staticBannerRepository, _) =>
        GetStaticBannerAdUseCase(staticBannerRepository),
  ),
  ProxyProvider<AdRequest, GetInlineBannerAdUseCase>(
    update: (context, inlineBannerRepository, _) =>
        GetInlineBannerAdUseCase(inlineBannerRepository),
  ),
];

// 4. ViewModels
// View 가 사용. 2, 3에 등록한 클래스를 사용할 수 있음.
List<SingleChildWidget> viewModels = [
  ChangeNotifierProvider<Board1ViewModel>(
    create: (context) => Board1ViewModel(
      context.read<UseCases>(),
      context.read<GetStaticBannerAdUseCase>(),
      context.read<GetInlineBannerAdUseCase>(),
    ),
  ),
  ChangeNotifierProvider<ViewViewModel>(
    create: (context) => ViewViewModel(
      context.read<GetStaticBannerAdUseCase>(),
    ),
  ),
];
