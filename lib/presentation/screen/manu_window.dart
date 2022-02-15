import 'package:baduk_park/presentation/view_model/main_view_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../auth_gate/auth_gate.dart';
import '../components/widget_body/border_button.dart';
import 'edit.dart';

class MenuWindow extends StatefulWidget {
  const MenuWindow({Key? key}) : super(key: key);

  @override
  State<MenuWindow> createState() => _MenuWindowState();
}

class _MenuWindowState extends State<MenuWindow> {
  List<String> borderMenuTitles = [
    '바둑이야기',
    '바둑뉴스',
    '기력향상',
  ];

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();

    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Column(
                children: [
                  Column(
                      children: borderMenuTitles
                          .map<Widget>((e) => BorderButton(borderName: e))
                          .toList()),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            child: IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Edit(),
                                  ),
                                );
                              },
                            ),
                          ),
                          const Text(
                            '글쓰기',
                            style: TextStyle(
                                color: Colors.deepPurple, fontSize: 10),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            child: IconButton(
                              icon: const Icon(
                                Icons.person,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          const Text(
                            '내 정보',
                            style: TextStyle(
                                color: Colors.deepPurple, fontSize: 10),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            child: IconButton(
                              onPressed: () {
                                if (!viewModel.isLogin) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AuthGate(),
                                    ),
                                  );
                                } else {
                                  FirebaseAuth.instance.signOut();
                                  Navigator.of(context, rootNavigator: true)
                                      .pop();
                                }
                              },
                              icon: Icon(
                                viewModel.isLogin ? Icons.logout : Icons.login,
                              ),
                            ),
                          ),
                          Text(
                            viewModel.isLogin ? '로그아웃' : '로그인',
                            style: const TextStyle(
                                color: Colors.deepPurple, fontSize: 10),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            );
          },
        );
      },
      child: const Icon(
        Icons.manage_accounts,
      ),
    );
  }
}
