import 'package:freezed_annotation/freezed_annotation.dart';

part 'board1_event.freezed.dart';

@freezed
class Board1Event with _$Board1Event {
  const factory Board1Event.loadPosts() = LoadPosts;
}
