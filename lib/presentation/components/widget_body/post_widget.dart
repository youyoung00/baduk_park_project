import 'package:flutter/material.dart';

import '../../../domain/model/post.dart';

class PostWidget extends StatefulWidget {
  final Post post;

  const PostWidget({Key? key, required this.post}) : super(key: key);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 0.0,
            horizontal: 0.0,
          ),
          title: Text.rich(
            TextSpan(
              style: const TextStyle(fontSize: 16),
              text: widget.post.title,
              children: [
                TextSpan(
                  style: const TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 13,
                  ),
                  text: ' [${widget.post.commentCount}]',
                ),
              ],
            ),
          ),
          subtitle: Text.rich(
            TextSpan(
              style: const TextStyle(fontSize: 13),
              text: widget.post.emailName,
              children: [
                TextSpan(
                  text: ' 조회 ${widget.post.viewCount}',
                ),
              ],
            ),
          ),
          trailing: Text(
            widget.post.createdAt.toString(),
          ),
        ),
        const Divider()
      ],
    );
  }
}
