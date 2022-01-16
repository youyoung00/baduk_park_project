import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'KB바둑리그',
                style: TextStyle(color: Colors.deepPurple),
              ),
              SizedBox(
                width: 10,
              ),
              Text('만약에 신진서가 인공지능에게 이긴다면?'),
            ],
          ),
          Row(
            children: [
              Text(
                '담당자',
              ),
              SizedBox(
                width: 10,
              ),
              Text('2시간전'),
              SizedBox(
                width: 10,
              ),
              Text.rich(TextSpan(text: '댓글 ', children: [
                TextSpan(
                    text: '',
                    // '$reviewCount',
                    style: const TextStyle(color: Colors.red)),
              ])),
              // Text('댓글 13'),
            ],
          ),
          const Divider()
        ],
      ),
    );
  }
}
