import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

import '../presentation/screen/main_view.dart';

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
                    // FirebaseAuth.instance.currentUser.
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const MainView();
                        },
                      ),
                    );
                  },
                  child: const Text('시작!'),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
