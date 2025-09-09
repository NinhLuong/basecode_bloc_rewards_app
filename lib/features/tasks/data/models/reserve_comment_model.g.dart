// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reserve_comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReserveCommentModel _$ReserveCommentModelFromJson(Map<String, dynamic> json) =>
    _ReserveCommentModel(
      error: json['error'] as bool?,
      errorCode: (json['error_code'] as num?)?.toInt(),
      data: json['data'] == null
          ? null
          : CommentModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReserveCommentModelToJson(
  _ReserveCommentModel instance,
) => <String, dynamic>{
  'error': instance.error,
  'error_code': instance.errorCode,
  'data': instance.data,
};

_CommentModel _$CommentModelFromJson(Map<String, dynamic> json) =>
    _CommentModel(
      commentId: json['comment_id'] as String?,
      commentTaskId: json['comment_task_id'] as String?,
      commentUserId: json['comment_user_id'] as String?,
      commentText: json['comment_text'] as String?,
      commentStatus: json['comment_status'] as String?,
      commentLastChanged: json['comment_last_changed'] as String?,
      commentCreatedAt: json['comment_created_at'] as String?,
    );

Map<String, dynamic> _$CommentModelToJson(_CommentModel instance) =>
    <String, dynamic>{
      'comment_id': instance.commentId,
      'comment_task_id': instance.commentTaskId,
      'comment_user_id': instance.commentUserId,
      'comment_text': instance.commentText,
      'comment_status': instance.commentStatus,
      'comment_last_changed': instance.commentLastChanged,
      'comment_created_at': instance.commentCreatedAt,
    };
