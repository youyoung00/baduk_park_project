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
      {@JsonKey(name: '_id') required int id,
      @JsonKey(name: 'title') required String title,
      @JsonKey(name: 'content') required String content,
      @JsonKey(name: 'board_name') required String boardName,
      @JsonKey(name: 'view_count') required int viewCount,
      @JsonKey(name: 'member_id') required int memberId,
      @JsonKey(name: 'created_at') required DateTime createdAt,
      @JsonKey(name: 'comment_count') required int commentCount,
      @JsonKey(name: 'email_name') required String emailName}) {
    return _Post(
      id: id,
      title: title,
      content: content,
      boardName: boardName,
      viewCount: viewCount,
      memberId: memberId,
      createdAt: createdAt,
      commentCount: commentCount,
      emailName: emailName,
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
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'board_name')
  String get boardName => throw _privateConstructorUsedError;
  @JsonKey(name: 'view_count')
  int get viewCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'member_id')
  int get memberId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment_count')
  int get commentCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_name')
  String get emailName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'board_name') String boardName,
      @JsonKey(name: 'view_count') int viewCount,
      @JsonKey(name: 'member_id') int memberId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'comment_count') int commentCount,
      @JsonKey(name: 'email_name') String emailName});
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
    Object? content = freezed,
    Object? boardName = freezed,
    Object? viewCount = freezed,
    Object? memberId = freezed,
    Object? createdAt = freezed,
    Object? commentCount = freezed,
    Object? emailName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      boardName: boardName == freezed
          ? _value.boardName
          : boardName // ignore: cast_nullable_to_non_nullable
              as String,
      viewCount: viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: memberId == freezed
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      emailName: emailName == freezed
          ? _value.emailName
          : emailName // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: '_id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'board_name') String boardName,
      @JsonKey(name: 'view_count') int viewCount,
      @JsonKey(name: 'member_id') int memberId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'comment_count') int commentCount,
      @JsonKey(name: 'email_name') String emailName});
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
    Object? content = freezed,
    Object? boardName = freezed,
    Object? viewCount = freezed,
    Object? memberId = freezed,
    Object? createdAt = freezed,
    Object? commentCount = freezed,
    Object? emailName = freezed,
  }) {
    return _then(_Post(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      boardName: boardName == freezed
          ? _value.boardName
          : boardName // ignore: cast_nullable_to_non_nullable
              as String,
      viewCount: viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: memberId == freezed
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      emailName: emailName == freezed
          ? _value.emailName
          : emailName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Post implements _Post {
  _$_Post(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'content') required this.content,
      @JsonKey(name: 'board_name') required this.boardName,
      @JsonKey(name: 'view_count') required this.viewCount,
      @JsonKey(name: 'member_id') required this.memberId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'comment_count') required this.commentCount,
      @JsonKey(name: 'email_name') required this.emailName});

  factory _$_Post.fromJson(Map<String, dynamic> json) => _$$_PostFromJson(json);

  @override
  @JsonKey(name: '_id')
  final int id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'board_name')
  final String boardName;
  @override
  @JsonKey(name: 'view_count')
  final int viewCount;
  @override
  @JsonKey(name: 'member_id')
  final int memberId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'comment_count')
  final int commentCount;
  @override
  @JsonKey(name: 'email_name')
  final String emailName;

  @override
  String toString() {
    return 'Post(id: $id, title: $title, content: $content, boardName: $boardName, viewCount: $viewCount, memberId: $memberId, createdAt: $createdAt, commentCount: $commentCount, emailName: $emailName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Post &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.boardName, boardName) &&
            const DeepCollectionEquality().equals(other.viewCount, viewCount) &&
            const DeepCollectionEquality().equals(other.memberId, memberId) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.commentCount, commentCount) &&
            const DeepCollectionEquality().equals(other.emailName, emailName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(boardName),
      const DeepCollectionEquality().hash(viewCount),
      const DeepCollectionEquality().hash(memberId),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(commentCount),
      const DeepCollectionEquality().hash(emailName));

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
  factory _Post(
      {@JsonKey(name: '_id') required int id,
      @JsonKey(name: 'title') required String title,
      @JsonKey(name: 'content') required String content,
      @JsonKey(name: 'board_name') required String boardName,
      @JsonKey(name: 'view_count') required int viewCount,
      @JsonKey(name: 'member_id') required int memberId,
      @JsonKey(name: 'created_at') required DateTime createdAt,
      @JsonKey(name: 'comment_count') required int commentCount,
      @JsonKey(name: 'email_name') required String emailName}) = _$_Post;

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override
  @JsonKey(name: '_id')
  int get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(name: 'board_name')
  String get boardName;
  @override
  @JsonKey(name: 'view_count')
  int get viewCount;
  @override
  @JsonKey(name: 'member_id')
  int get memberId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'comment_count')
  int get commentCount;
  @override
  @JsonKey(name: 'email_name')
  String get emailName;
  @override
  @JsonKey(ignore: true)
  _$PostCopyWith<_Post> get copyWith => throw _privateConstructorUsedError;
}
