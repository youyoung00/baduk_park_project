// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainState _$$_MainStateFromJson(Map<String, dynamic> json) => _$_MainState(
      (json['posts'] as List<dynamic>)
          .map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['isLoading'] as bool,
    );

Map<String, dynamic> _$$_MainStateToJson(_$_MainState instance) =>
    <String, dynamic>{
      'posts': instance.posts,
      'isLoading': instance.isLoading,
    };
