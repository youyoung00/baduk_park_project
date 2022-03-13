// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      id: json['_id'] as int?,
      title: json['title'] as String,
      content: json['content'] as String,
      boardName: json['board_name'] as String,
      viewCount: json['view_count'] as int,
      memberId: json['member_id'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      commentCount: json['comment_count'] as int,
      emailName: json['email_name'] as String,
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'board_name': instance.boardName,
      'view_count': instance.viewCount,
      'member_id': instance.memberId,
      'created_at': instance.createdAt.toIso8601String(),
      'comment_count': instance.commentCount,
      'email_name': instance.emailName,
    };
