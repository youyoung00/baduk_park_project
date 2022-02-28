import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../domain/model/post.dart';

class PostWidget extends StatefulWidget {
  final Post post;

  // 모델데이터의 리스트로 받기.
  // final String id;
  // final String name;
  // final String keyword;
  // final String comment;
  // final String title;
  // final String inputTime;
  // final String contents;

  const PostWidget({Key? key, required this.post}) : super(key: key);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: ListTile(
        title: Text.rich(
          TextSpan(
            text: widget.post.title,
            children: [
              TextSpan(
                text: ' [${widget.post.commentCount}]',
              ),
            ],
          ),
        ),
        subtitle: Text.rich(
          TextSpan(
            text: widget.post.name,
            children: [
              TextSpan(
                text: ' 조회수 ${widget.post.viewCount}',
              ),
            ],
          ),
        ),
        // Row(
        //   children: [
        //     Text('${widget.post.name} '),
        //     Text('조회수 ${widget.post.viewCount}'),
        //   ],
        // ),
        trailing: Text(widget.post.createTime.toString()),
      ),
    );
  }
}
