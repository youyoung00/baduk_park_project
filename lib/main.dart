import 'package:baduk_park/auth_gate/auth_gate.dart';
import 'package:baduk_park/presentation/view_model/post_view_model_data.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data/data_source/remote/post_remote_data_source.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
          child: const AuthGate(),
        ));
  }
}
