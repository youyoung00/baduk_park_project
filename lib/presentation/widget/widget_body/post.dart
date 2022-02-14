import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  // 모델데이터의 리스트로 받기.
  final String id;
  final String name;
  final String keyword;
  final String comment;
  final String title;
  final String inputTime;
  final String contents;

  const Post({
    Key? key,
    required this.keyword,
    required this.name,
    required this.title,
    required this.id,
    required this.comment,
    required this.contents,
    required this.inputTime,
  }) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                widget.keyword,
                style: const TextStyle(color: Colors.deepPurple),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(widget.title),
            ],
          ),
          Row(
            children: [
              Text(
                widget.name,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(widget.inputTime),
              const SizedBox(
                width: 10,
              ),
              Text.rich(TextSpan(text: '댓글 ', children: [
                TextSpan(
                    text: '${widget.comment}',
                    // '$reviewCount',
                    style: const TextStyle(color: Colors.red)),
              ])),
            ],
          ),
          const Divider()
        ],
      ),
    );
  }
}
