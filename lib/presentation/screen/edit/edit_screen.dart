import 'dart:async';

import 'package:baduk_park/domain/model/post.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_model/edit_view_model.dart';

class EditScreen extends StatefulWidget {
  final Post? post;

  const EditScreen({Key? key, this.post}) : super(key: key);

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  final _titleTextEditingController = TextEditingController();
  final _contentTextEditingController = TextEditingController();
  StreamSubscription? _streamSubscription;

  @override
  void initState() {
    super.initState();
    if (widget.post != null) {
      _titleTextEditingController.text = widget.post!.title;
      _contentTextEditingController.text = widget.post!.content;
    }
    Future.microtask(() {
      final viewModel = context.read<EditViewModel>();
      viewModel.eventStream.listen((event) {
        event.when(savePost: () {
          // Consumer(builder: (BuildContext context, value, Widget? child) {  },)
          Navigator.pop(context, true);
        }, showSnackBar: (String message) {
          if (_titleTextEditingController.text.isEmpty ||
              _contentTextEditingController.text.isEmpty) {
            final snackBar = SnackBar(content: Text(message));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            return;
          }
        });
      });
    });
  }

  @override
  void dispose() {
    _streamSubscription?.cancel();
    _titleTextEditingController.dispose();
    _contentTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<EditViewModel>();
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
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _titleTextEditingController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '제목',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                maxLines: 20,
                controller: _contentTextEditingController,
                decoration: const InputDecoration(
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
                  onPressed: () {
                    // viewModel.onEvent(
                    //   EditPostEvent.savePost(
                    //     widget.post == null ? null : widget.post!.id,
                    //     _titleTextEditingController.text,
                    //     _contentTextEditingController.text,
                    //   ),
                    // );
                  },
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
