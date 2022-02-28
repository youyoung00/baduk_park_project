// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
class _$PostTearOff {
  const _$PostTearOff();

  _Post call(
      {@JsonKey(name: '_id') required String id,
      required String title,
      required String name,
      @JsonKey(name: 'member_id') required String memberId,
      @JsonKey(name: 'view_count') required String viewCount,
      required String content,
      @JsonKey(name: 'create_time') required String createTime,
      @JsonKey(name: 'comment_count') required String commentCount,
      @JsonKey(name: 'board_num') required String boardNum,
      @JsonKey(name: 'status') required String postStatus}) {
    return _Post(
      id: id,
      title: title,
      name: name,
      memberId: memberId,
      viewCount: viewCount,
      content: content,
      createTime: createTime,
      commentCount: commentCount,
      boardNum: boardNum,
      postStatus: postStatus,
    );
  }

  Post fromJson(Map<String, Object?> json) {
    return Post.fromJson(json);
  }
}

/// @nodoc
const $Post = _$PostTearOff();

/// @nodoc
mixin _$Post {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'member_id')
  String get memberId => throw _privateConstructorUsedError;
  @JsonKey(name: 'view_count')
  String get viewCount => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'create_time')
  String get createTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment_count')
  String get commentCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'board_num')
  String get boardNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get postStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      String name,
      @JsonKey(name: 'member_id') String memberId,
      @JsonKey(name: 'view_count') String viewCount,
      String content,
      @JsonKey(name: 'create_time') String createTime,
      @JsonKey(name: 'comment_count') String commentCount,
      @JsonKey(name: 'board_num') String boardNum,
      @JsonKey(name: 'status') String postStatus});
}

/// @nodoc
class _$PostCopyWithImpl<$Res> implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  final Post _value;
  // ignore: unused_field
  final $Res Function(Post) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? name = freezed,
    Object? memberId = freezed,
    Object? viewCount = freezed,
    Object? content = freezed,
    Object? createTime = freezed,
    Object? commentCount = freezed,
    Object? boardNum = freezed,
    Object? postStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      memberId: memberId == freezed
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
      viewCount: viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: createTime == freezed
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as String,
      boardNum: boardNum == freezed
          ? _value.boardNum
          : boardNum // ignore: cast_nullable_to_non_nullable
              as String,
      postStatus: postStatus == freezed
          ? _value.postStatus
          : postStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$PostCopyWith(_Post value, $Res Function(_Post) then) =
      __$PostCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      String name,
      @JsonKey(name: 'member_id') String memberId,
      @JsonKey(name: 'view_count') String viewCount,
      String content,
      @JsonKey(name: 'create_time') String createTime,
      @JsonKey(name: 'comment_count') String commentCount,
      @JsonKey(name: 'board_num') String boardNum,
      @JsonKey(name: 'status') String postStatus});
}

/// @nodoc
class __$PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res>
    implements _$PostCopyWith<$Res> {
  __$PostCopyWithImpl(_Post _value, $Res Function(_Post) _then)
      : super(_value, (v) => _then(v as _Post));

  @override
  _Post get _value => super._value as _Post;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? name = freezed,
    Object? memberId = freezed,
    Object? viewCount = freezed,
    Object? content = freezed,
    Object? createTime = freezed,
    Object? commentCount = freezed,
    Object? boardNum = freezed,
    Object? postStatus = freezed,
  }) {
    return _then(_Post(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      memberId: memberId == freezed
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
      viewCount: viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: createTime == freezed
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as String,
      boardNum: boardNum == freezed
          ? _value.boardNum
          : boardNum // ignore: cast_nullable_to_non_nullable
              as String,
      postStatus: postStatus == freezed
          ? _value.postStatus
          : postStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Post implements _Post {
  const _$_Post(
      {@JsonKey(name: '_id') required this.id,
      required this.title,
      required this.name,
      @JsonKey(name: 'member_id') required this.memberId,
      @JsonKey(name: 'view_count') required this.viewCount,
      required this.content,
      @JsonKey(name: 'create_time') required this.createTime,
      @JsonKey(name: 'comment_count') required this.commentCount,
      @JsonKey(name: 'board_num') required this.boardNum,
      @JsonKey(name: 'status') required this.postStatus});

  factory _$_Post.fromJson(Map<String, dynamic> json) => _$$_PostFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String title;
  @override
  final String name;
  @override
  @JsonKey(name: 'member_id')
  final String memberId;
  @override
  @JsonKey(name: 'view_count')
  final String viewCount;
  @override
  final String content;
  @override
  @JsonKey(name: 'create_time')
  final String createTime;
  @override
  @JsonKey(name: 'comment_count')
  final String commentCount;
  @override
  @JsonKey(name: 'board_num')
  final String boardNum;
  @override
  @JsonKey(name: 'status')
  final String postStatus;

  @override
  String toString() {
    return 'Post(id: $id, title: $title, name: $name, memberId: $memberId, viewCount: $viewCount, content: $content, createTime: $createTime, commentCount: $commentCount, boardNum: $boardNum, postStatus: $postStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Post &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.memberId, memberId) &&
            const DeepCollectionEquality().equals(other.viewCount, viewCount) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality()
                .equals(other.createTime, createTime) &&
            const DeepCollectionEquality()
                .equals(other.commentCount, commentCount) &&
            const DeepCollectionEquality().equals(other.boardNum, boardNum) &&
            const DeepCollectionEquality()
                .equals(other.postStatus, postStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(memberId),
      const DeepCollectionEquality().hash(viewCount),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(createTime),
      const DeepCollectionEquality().hash(commentCount),
      const DeepCollectionEquality().hash(boardNum),
      const DeepCollectionEquality().hash(postStatus));

  @JsonKey(ignore: true)
  @override
  _$PostCopyWith<_Post> get copyWith =>
      __$PostCopyWithImpl<_Post>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostToJson(this);
  }
}

abstract class _Post implements Post {
  const factory _Post(
      {@JsonKey(name: '_id') required String id,
      required String title,
      required String name,
      @JsonKey(name: 'member_id') required String memberId,
      @JsonKey(name: 'view_count') required String viewCount,
      required String content,
      @JsonKey(name: 'create_time') required String createTime,
      @JsonKey(name: 'comment_count') required String commentCount,
      @JsonKey(name: 'board_num') required String boardNum,
      @JsonKey(name: 'status') required String postStatus}) = _$_Post;

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get title;
  @override
  String get name;
  @override
  @JsonKey(name: 'member_id')
  String get memberId;
  @override
  @JsonKey(name: 'view_count')
  String get viewCount;
  @override
  String get content;
  @override
  @JsonKey(name: 'create_time')
  String get createTime;
  @override
  @JsonKey(name: 'comment_count')
  String get commentCount;
  @override
  @JsonKey(name: 'board_num')
  String get boardNum;
  @override
  @JsonKey(name: 'status')
  String get postStatus;
  @override
  @JsonKey(ignore: true)
  _$PostCopyWith<_Post> get copyWith => throw _privateConstructorUsedError;
}
