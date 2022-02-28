// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      id: json['_id'] as String,
      title: json['title'] as String,
      name: json['name'] as String,
      memberId: json['member_id'] as String,
      viewCount: json['view_count'] as String,
      content: json['content'] as String,
      createTime: json['create_time'] as String,
      commentCount: json['comment_count'] as String,
      boardNum: json['board_num'] as String,
      postStatus: json['status'] as String,
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'name': instance.name,
      'member_id': instance.memberId,
      'view_count': instance.viewCount,
      'content': instance.content,
      'create_time': instance.createTime,
      'comment_count': instance.commentCount,
      'board_num': instance.boardNum,
      'status': instance.postStatus,
    };
