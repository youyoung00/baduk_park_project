import 'package:baduk_park/core/security%20area/keys/api_key.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

import '../board1/board1_screen.dart';

class AuthGateScreen extends StatelessWidget {
  const AuthGateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        // User is not signed in
        if (!snapshot.hasData) {
          return const SignInScreen(providerConfigs: [
            EmailProviderConfiguration(),
            GoogleProviderConfiguration(clientId: Keys.googleLoginKey),
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
                          return const Board1Screen();
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
