import 'package:flutter/material.dart';

import '../../screen/edit.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                  title: Column(
                children: [
                  Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(bottom: 8.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.deepPurple),
                              borderRadius: BorderRadius.circular(8)),
                          width: 240,
                          height: 40,
                          child: TextButton(
                              onPressed: () {}, child: Text('바둑이야기'))),
                      Container(
                          margin: EdgeInsets.only(bottom: 8.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.deepPurple),
                              borderRadius: BorderRadius.circular(8)),
                          width: 240,
                          height: 40,
                          child: TextButton(
                              onPressed: () {}, child: Text('바둑뉴스'))),
                      Container(
                          margin: EdgeInsets.only(bottom: 8.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.deepPurple),
                              borderRadius: BorderRadius.circular(8)),
                          width: 240,
                          height: 40,
                          child: TextButton(
                              onPressed: () {}, child: Text('실력향상'))),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            child: IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Edit()),
                                );
                              },
                            ),
                          ),
                          Text(
                            '글쓰기',
                            style: TextStyle(
                                color: Colors.deepPurple, fontSize: 10),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            child: IconButton(
                              icon: Icon(
                                Icons.person,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Text(
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
                              onPressed: () {},
                              icon: Icon(
                                Icons.login,
                              ),
                            ),
                          ),
                          Text(
                            '로그인',
                            style: TextStyle(
                                color: Colors.deepPurple, fontSize: 10),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ));
            });
      },
      child: Icon(
        Icons.manage_accounts,
      ),
    );
  }
}
