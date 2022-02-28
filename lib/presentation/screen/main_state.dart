import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/model/post.dart';

part 'main_state.freezed.dart';
part 'main_state.g.dart';

@freezed
class MainState with _$MainState {
  factory MainState(
    List<Post> posts,
    bool isLoading,
  ) = _MainState;

  factory MainState.fromJson(Map<String, dynamic> json) =>
      _$MainStateFromJson(json);
}
