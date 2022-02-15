import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  bool isCheckBox = false;

  bool isCheckboxListTile = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("글쓰기"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: OutlinedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text('바둑이야기'),
                                        Checkbox(
                                          value: isCheckBox,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              isCheckBox = value!;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text('바둑뉴스'),
                                        Checkbox(
                                          value: isCheckBox,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              isCheckBox = value!;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text('실력향상'),
                                        Checkbox(
                                          value: isCheckBox,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              isCheckBox = value!;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0))),
                        ),
                        child: const Text("게시판 선택"),
                      )),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    flex: 1,
                    child: OutlinedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('이세돌'),
                                      Checkbox(
                                        value: isCheckBox,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            isCheckBox = value!;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('대회'),
                                      Checkbox(
                                        value: isCheckBox,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            isCheckBox = value!;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('알파고'),
                                      Checkbox(
                                        value: isCheckBox,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            isCheckBox = value!;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0))),
                      ),
                      child: const Text("말머리 선택"),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '제목',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(100),
                  border: OutlineInputBorder(),
                  labelText: '내용을 입력해주세요.',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20)),
                  onPressed: () {},
                  child: const Text('등록'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20)),
                  onPressed: () {},
                  child: const Text('취소'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
