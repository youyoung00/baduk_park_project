import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:baduk_park/domain/repository/contents_api_repository.dart';
import 'package:baduk_park/presentation/screen/edit/edit_post_ui_event.dart';
import 'package:flutter/material.dart';

import '../../domain/model/post.dart';

class EditViewModel with ChangeNotifier {
  final ContentsApiRepository repository;

  bool _isLogin = false;

  final _eventController = StreamController<EditPostUiEvent>.broadcast();

  Stream<EditPostUiEvent> get eventController => _eventController.stream;

  EditViewModel(this.repository){
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

  void onEvent(EditPostUiEvent event) {
    event.when(
      savePost: _savePost,
      showSnackBar: _showSnackBar,
    );
  }

  Future<void> _savePost(int? id,
      String title,
      String content,) async {
    if (title.isEmpty || content.isEmpty) {
      _eventController.add(
        const EditPostUiEvent.showSnackBar('제목이나 내용이 비어있습니다.'),
      );
      return;
    }
    if (id == null) {
      await repository.insertPost(
        Post(
          id: id,
          createdAt: DateTime.now(),
          boardName: '',
          title: title,
          memberId: null,
          viewCount: 0,
          content: '',
          emailName
          :,
          commentCount: null,
        ),
      );
    } else {
      await repository.updateNote(Note(
          id: id,
          color: _color,
          title: title,
          content: content,
          timestamp: DateTime
              .now()
              .millisecondsSinceEpoch));
    }
  }
}
