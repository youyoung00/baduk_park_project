// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainState _$MainStateFromJson(Map<String, dynamic> json) {
  return _MainState.fromJson(json);
}

/// @nodoc
class _$MainStateTearOff {
  const _$MainStateTearOff();

  _MainState call(List<Post> posts, bool isLoading) {
    return _MainState(
      posts,
      isLoading,
    );
  }

  MainState fromJson(Map<String, Object?> json) {
    return MainState.fromJson(json);
  }
}

/// @nodoc
const $MainState = _$MainStateTearOff();

/// @nodoc
mixin _$MainState {
  List<Post> get posts => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res>;
  $Res call({List<Post> posts, bool isLoading});
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res> implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  final MainState _value;
  // ignore: unused_field
  final $Res Function(MainState) _then;

  @override
  $Res call({
    Object? posts = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$MainStateCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory _$MainStateCopyWith(
          _MainState value, $Res Function(_MainState) then) =
      __$MainStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Post> posts, bool isLoading});
}

/// @nodoc
class __$MainStateCopyWithImpl<$Res> extends _$MainStateCopyWithImpl<$Res>
    implements _$MainStateCopyWith<$Res> {
  __$MainStateCopyWithImpl(_MainState _value, $Res Function(_MainState) _then)
      : super(_value, (v) => _then(v as _MainState));

  @override
  _MainState get _value => super._value as _MainState;

  @override
  $Res call({
    Object? posts = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_MainState(
      posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainState implements _MainState {
  _$_MainState(this.posts, this.isLoading);

  factory _$_MainState.fromJson(Map<String, dynamic> json) =>
      _$$_MainStateFromJson(json);

  @override
  final List<Post> posts;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'MainState(posts: $posts, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MainState &&
            const DeepCollectionEquality().equals(other.posts, posts) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(posts),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$MainStateCopyWith<_MainState> get copyWith =>
      __$MainStateCopyWithImpl<_MainState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainStateToJson(this);
  }
}

abstract class _MainState implements MainState {
  factory _MainState(List<Post> posts, bool isLoading) = _$_MainState;

  factory _MainState.fromJson(Map<String, dynamic> json) =
      _$_MainState.fromJson;

  @override
  List<Post> get posts;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$MainStateCopyWith<_MainState> get copyWith =>
      throw _privateConstructorUsedError;
}
