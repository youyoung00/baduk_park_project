import 'dart:async';

import 'package:baduk_park/domain/repository/contents_api_repository.dart';
import 'package:baduk_park/presentation/screen/edit/edit_post_ui_event.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../domain/model/post.dart';
import '../screen/edit/edit_post_event.dart';

class EditViewModel with ChangeNotifier {
  final ContentsApiRepository repository;

  bool _isLogin = false;

  final _eventController = StreamController<EditPostUiEvent>.broadcast();

  Stream<EditPostUiEvent> get eventStream => _eventController.stream;

  EditViewModel(this.repository) {
    FirebaseAuth.instance.authStateChanges().listen(
      (User? user) {
        if (user == null) {
          _isLogin = false;
        } else {
          _isLogin = true;
        }
        notifyListeners();
      },
    );
  }

  void onEvent(EditPostEvent event) {
    event.when(
      savePost: _savePost,
    );
  }

  Future<void> _savePost(
    int? id,
    String boardName,
    String title,
    String content,
    DateTime createdAt,
    int memberId,
    int viewCount,
    String emailName,
    int commentCount,
  ) async {
    if (title.isEmpty || content.isEmpty) {
      _eventController.add(
        const EditPostUiEvent.showSnackBar('제목이나 내용이 비어있습니다.'),
      );
      return;
    }
    if (id == null) {
      await repository.insertPost(
        Post(
          createdAt: DateTime.now(),
          boardName: boardName,
          title: title,
          memberId: memberId,
          viewCount: viewCount,
          content: content,
          emailName: emailName,
          commentCount: commentCount,
        ),
      );
    } else {
      await repository.updatePost(
        Post(
          createdAt: DateTime.now(),
          boardName: boardName,
          id: id,
          emailName: emailName,
          content: content,
          viewCount: viewCount,
          commentCount: commentCount,
          title: title,
          memberId: memberId,
        ),
      );
    }
    _eventController.add(
      const EditPostUiEvent.savePost(),
    );
  }
}
