import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_post_ui_event.freezed.dart';

@freezed
class EditPostUiEvent<T> with _$EditPostUiEvent<T> {
  const factory EditPostUiEvent.savePost() = SavePost;
  const factory EditPostUiEvent.showSnackBar(String message) = ShowSnackBar;
}
