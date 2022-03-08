import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../data/data_source/api/post_api_data_source.dart';
import '../../data/repository/post_remote_repository_impl.dart';
import '../../domain/repository/contents_api_repository.dart';
import '../../domain/use_case/get_posts_use_case.dart';
import '../../presentation/view_model/main_view_model.dart';

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
  )
];

// 3. 2번 객체에 의존성 있는 객체. 2에 등록한 클래스에 의존하는 Model.
List<SingleChildWidget> dependentModels = [
  ProxyProvider<http.Client, PostApi>(
    update: (context, client, _) => PostApi(client),
  ),
  ProxyProvider<PostApi, ContentsApiRepository>(
    update: (context, postApi, _) => BoardApiRepositoryImpl(postApi),
  ),
  ProxyProvider<ContentsApiRepository, GetPostsUseCase>(
    update: (context, repository, _) => GetPostsUseCase(repository),
  ),
];

// 4. ViewModels
// View 가 사용. 2, 3에 등록한 클래스를 사용할 수 있음.
List<SingleChildWidget> viewModels = [
  ChangeNotifierProvider<MainViewModel>(
    create: (context) => MainViewModel(context.read<GetPostsUseCase>()),
  ),
];
