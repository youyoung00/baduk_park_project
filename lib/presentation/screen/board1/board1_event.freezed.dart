// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'board1_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$Board1EventTearOff {
  const _$Board1EventTearOff();

  LoadPosts loadPosts() {
    return const LoadPosts();
  }
}

/// @nodoc
const $Board1Event = _$Board1EventTearOff();

/// @nodoc
mixin _$Board1Event {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadPosts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPosts value) loadPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadPosts value)? loadPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPosts value)? loadPosts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Board1EventCopyWith<$Res> {
  factory $Board1EventCopyWith(
          Board1Event value, $Res Function(Board1Event) then) =
      _$Board1EventCopyWithImpl<$Res>;
}

/// @nodoc
class _$Board1EventCopyWithImpl<$Res> implements $Board1EventCopyWith<$Res> {
  _$Board1EventCopyWithImpl(this._value, this._then);

  final Board1Event _value;
  // ignore: unused_field
  final $Res Function(Board1Event) _then;
}

/// @nodoc
abstract class $LoadPostsCopyWith<$Res> {
  factory $LoadPostsCopyWith(LoadPosts value, $Res Function(LoadPosts) then) =
      _$LoadPostsCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadPostsCopyWithImpl<$Res> extends _$Board1EventCopyWithImpl<$Res>
    implements $LoadPostsCopyWith<$Res> {
  _$LoadPostsCopyWithImpl(LoadPosts _value, $Res Function(LoadPosts) _then)
      : super(_value, (v) => _then(v as LoadPosts));

  @override
  LoadPosts get _value => super._value as LoadPosts;
}

/// @nodoc

class _$LoadPosts implements LoadPosts {
  const _$LoadPosts();

  @override
  String toString() {
    return 'Board1Event.loadPosts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadPosts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadPosts,
  }) {
    return loadPosts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadPosts,
  }) {
    return loadPosts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadPosts,
    required TResult orElse(),
  }) {
    if (loadPosts != null) {
      return loadPosts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPosts value) loadPosts,
  }) {
    return loadPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadPosts value)? loadPosts,
  }) {
    return loadPosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPosts value)? loadPosts,
    required TResult orElse(),
  }) {
    if (loadPosts != null) {
      return loadPosts(this);
    }
    return orElse();
  }
}

abstract class LoadPosts implements Board1Event {
  const factory LoadPosts() = _$LoadPosts;
}
