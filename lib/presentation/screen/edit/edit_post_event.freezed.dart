// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_post_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditPostEventTearOff {
  const _$EditPostEventTearOff();

  SavePost<T> savePost<T>(
      int? id,
      String boardName,
      String title,
      String content,
      DateTime createdAt,
      int memberId,
      int viewCount,
      String emailName,
      int commentCount) {
    return SavePost<T>(
      id,
      boardName,
      title,
      content,
      createdAt,
      memberId,
      viewCount,
      emailName,
      commentCount,
    );
  }
}

/// @nodoc
const $EditPostEvent = _$EditPostEventTearOff();

/// @nodoc
mixin _$EditPostEvent<T> {
  int? get id => throw _privateConstructorUsedError;
  String get boardName => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  int get memberId => throw _privateConstructorUsedError;
  int get viewCount => throw _privateConstructorUsedError;
  String get emailName => throw _privateConstructorUsedError;
  int get commentCount => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? id,
            String boardName,
            String title,
            String content,
            DateTime createdAt,
            int memberId,
            int viewCount,
            String emailName,
            int commentCount)
        savePost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int? id,
            String boardName,
            String title,
            String content,
            DateTime createdAt,
            int memberId,
            int viewCount,
            String emailName,
            int commentCount)?
        savePost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? id,
            String boardName,
            String title,
            String content,
            DateTime createdAt,
            int memberId,
            int viewCount,
            String emailName,
            int commentCount)?
        savePost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SavePost<T> value) savePost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SavePost<T> value)? savePost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SavePost<T> value)? savePost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditPostEventCopyWith<T, EditPostEvent<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditPostEventCopyWith<T, $Res> {
  factory $EditPostEventCopyWith(
          EditPostEvent<T> value, $Res Function(EditPostEvent<T>) then) =
      _$EditPostEventCopyWithImpl<T, $Res>;
  $Res call(
      {int? id,
      String boardName,
      String title,
      String content,
      DateTime createdAt,
      int memberId,
      int viewCount,
      String emailName,
      int commentCount});
}

/// @nodoc
class _$EditPostEventCopyWithImpl<T, $Res>
    implements $EditPostEventCopyWith<T, $Res> {
  _$EditPostEventCopyWithImpl(this._value, this._then);

  final EditPostEvent<T> _value;
  // ignore: unused_field
  final $Res Function(EditPostEvent<T>) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? boardName = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? memberId = freezed,
    Object? viewCount = freezed,
    Object? emailName = freezed,
    Object? commentCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      boardName: boardName == freezed
          ? _value.boardName
          : boardName // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      memberId: memberId == freezed
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      viewCount: viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      emailName: emailName == freezed
          ? _value.emailName
          : emailName // ignore: cast_nullable_to_non_nullable
              as String,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $SavePostCopyWith<T, $Res>
    implements $EditPostEventCopyWith<T, $Res> {
  factory $SavePostCopyWith(
          SavePost<T> value, $Res Function(SavePost<T>) then) =
      _$SavePostCopyWithImpl<T, $Res>;
  @override
  $Res call(
      {int? id,
      String boardName,
      String title,
      String content,
      DateTime createdAt,
      int memberId,
      int viewCount,
      String emailName,
      int commentCount});
}

/// @nodoc
class _$SavePostCopyWithImpl<T, $Res>
    extends _$EditPostEventCopyWithImpl<T, $Res>
    implements $SavePostCopyWith<T, $Res> {
  _$SavePostCopyWithImpl(SavePost<T> _value, $Res Function(SavePost<T>) _then)
      : super(_value, (v) => _then(v as SavePost<T>));

  @override
  SavePost<T> get _value => super._value as SavePost<T>;

  @override
  $Res call({
    Object? id = freezed,
    Object? boardName = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? memberId = freezed,
    Object? viewCount = freezed,
    Object? emailName = freezed,
    Object? commentCount = freezed,
  }) {
    return _then(SavePost<T>(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      boardName == freezed
          ? _value.boardName
          : boardName // ignore: cast_nullable_to_non_nullable
              as String,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      memberId == freezed
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      emailName == freezed
          ? _value.emailName
          : emailName // ignore: cast_nullable_to_non_nullable
              as String,
      commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SavePost<T> implements SavePost<T> {
  const _$SavePost(
      this.id,
      this.boardName,
      this.title,
      this.content,
      this.createdAt,
      this.memberId,
      this.viewCount,
      this.emailName,
      this.commentCount);

  @override
  final int? id;
  @override
  final String boardName;
  @override
  final String title;
  @override
  final String content;
  @override
  final DateTime createdAt;
  @override
  final int memberId;
  @override
  final int viewCount;
  @override
  final String emailName;
  @override
  final int commentCount;

  @override
  String toString() {
    return 'EditPostEvent<$T>.savePost(id: $id, boardName: $boardName, title: $title, content: $content, createdAt: $createdAt, memberId: $memberId, viewCount: $viewCount, emailName: $emailName, commentCount: $commentCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SavePost<T> &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.boardName, boardName) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.memberId, memberId) &&
            const DeepCollectionEquality().equals(other.viewCount, viewCount) &&
            const DeepCollectionEquality().equals(other.emailName, emailName) &&
            const DeepCollectionEquality()
                .equals(other.commentCount, commentCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(boardName),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(memberId),
      const DeepCollectionEquality().hash(viewCount),
      const DeepCollectionEquality().hash(emailName),
      const DeepCollectionEquality().hash(commentCount));

  @JsonKey(ignore: true)
  @override
  $SavePostCopyWith<T, SavePost<T>> get copyWith =>
      _$SavePostCopyWithImpl<T, SavePost<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? id,
            String boardName,
            String title,
            String content,
            DateTime createdAt,
            int memberId,
            int viewCount,
            String emailName,
            int commentCount)
        savePost,
  }) {
    return savePost(id, boardName, title, content, createdAt, memberId,
        viewCount, emailName, commentCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int? id,
            String boardName,
            String title,
            String content,
            DateTime createdAt,
            int memberId,
            int viewCount,
            String emailName,
            int commentCount)?
        savePost,
  }) {
    return savePost?.call(id, boardName, title, content, createdAt, memberId,
        viewCount, emailName, commentCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? id,
            String boardName,
            String title,
            String content,
            DateTime createdAt,
            int memberId,
            int viewCount,
            String emailName,
            int commentCount)?
        savePost,
    required TResult orElse(),
  }) {
    if (savePost != null) {
      return savePost(id, boardName, title, content, createdAt, memberId,
          viewCount, emailName, commentCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SavePost<T> value) savePost,
  }) {
    return savePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SavePost<T> value)? savePost,
  }) {
    return savePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SavePost<T> value)? savePost,
    required TResult orElse(),
  }) {
    if (savePost != null) {
      return savePost(this);
    }
    return orElse();
  }
}

abstract class SavePost<T> implements EditPostEvent<T> {
  const factory SavePost(
      int? id,
      String boardName,
      String title,
      String content,
      DateTime createdAt,
      int memberId,
      int viewCount,
      String emailName,
      int commentCount) = _$SavePost<T>;

  @override
  int? get id;
  @override
  String get boardName;
  @override
  String get title;
  @override
  String get content;
  @override
  DateTime get createdAt;
  @override
  int get memberId;
  @override
  int get viewCount;
  @override
  String get emailName;
  @override
  int get commentCount;
  @override
  @JsonKey(ignore: true)
  $SavePostCopyWith<T, SavePost<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
