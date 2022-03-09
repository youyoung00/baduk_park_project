import 'package:baduk_park/domain/model/post.dart';
import 'package:flutter/material.dart';

class EditScreen extends StatefulWidget {
  final Post? post;

  const EditScreen({Key? key, this.post}) : super(key: key);

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  final _titleTextEditingController = TextEditingController();
  final _contentTextEditingController = TextEditingController();

  @override
  void initState() {
    if (widget.post != null) {
      _titleTextEditingController.text = widget.post!.title;
      _contentTextEditingController.text = widget.post!.content;
    } else {
      return;
    }
    super.initState();
  }

  @override
  void dispose() {
    _titleTextEditingController.dispose();
    _contentTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("글쓰기"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: OutlinedButton(
                        onPressed: () {
                          const snackBar = SnackBar(
                            content: Text('서비스 준비 중입니다.'),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
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
                        const snackBar = SnackBar(
                          content: Text('서비스 준비 중입니다.'),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: _titleTextEditingController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '제목',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                maxLines: 20,
                controller: _contentTextEditingController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(24),
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
                  onPressed: () {
                    Navigator.pop(context);
                  },
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
