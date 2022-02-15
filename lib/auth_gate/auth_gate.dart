import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:provider/provider.dart';

import '../data/data_source/remote/post_remote_data_source.dart';
import '../presentation/screen/main_view.dart';
import '../presentation/view_model/main_view_model.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        // User is not signed in
        if (!snapshot.hasData) {
          return const SignInScreen(providerConfigs: [
            EmailProviderConfiguration(),
            // GoogleProviderConfiguration(
            //   clientId:
            //       '160709417805-tt3r14lpqbt6aceemkr4mrffrn6t1c1q.apps.googleusercontent.com',
            // ),
          ]);
        }

        // Render your application if authenticated
        return Scaffold(
          appBar: AppBar(
            title: const Text("로그인 완료"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '바둑파크에 오신 것을 환영합니다',
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ChangeNotifierProvider<MainViewModel>(
                          create: (_) => MainViewModel(PostApi()),
                          child: const MainView(),
                        ),
                      ),
                    );
                  },
                  child: const Text('시작!'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
