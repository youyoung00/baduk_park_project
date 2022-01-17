import 'package:baduk_park/repository/post_api.dart';
import 'package:baduk_park/ui/view_model_data/post_view_model_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ui/view_page/main_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: ChangeNotifierProvider<PostViewModelData>(
          create: (_) => PostViewModelData(PostApi()),
          child: const MainView(),
        ));
  }
}
