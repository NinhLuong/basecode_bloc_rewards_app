import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:magic_rewards/core/domain/models/base_model.dart';
import 'package:magic_rewards/features/tasks/domain/entities/reserve_comment_entity.dart';

part 'reserve_comment_model.g.dart';

@immutable
@JsonSerializable()
class ReserveCommentModel extends BaseModel<ReserveCommentEntity> {
  @JsonKey(name: 'error')
  final bool? error;
  
  @JsonKey(name: 'error_code')
  final int? errorCode;
  
  @JsonKey(name: 'data')
  final CommentModel? data;

  const ReserveCommentModel({
    this.error,
    this.errorCode,
    this.data,
  });

  factory ReserveCommentModel.fromJson(Map<String, dynamic> json) => 
      _$ReserveCommentModelFromJson(json);

  Map<String, dynamic> toJson() => _$ReserveCommentModelToJson(this);

  @override
  ReserveCommentEntity toEntity() {
    return ReserveCommentEntity(commentEntity: data!.toEntity());
  }
}

@immutable
@JsonSerializable()
class CommentModel extends BaseModel<CommentEntity> {
  @JsonKey(name: 'comment_id')
  final String? commentId;
  
  @JsonKey(name: 'comment_task_id')
  final String? commentTaskId;
  
  @JsonKey(name: 'comment_user_id')
  final String? commentUserId;
  
  @JsonKey(name: 'comment_text')
  final String? commentText;
  
  @JsonKey(name: 'comment_status')
  final String? commentStatus;
  
  @JsonKey(name: 'comment_last_changed')
  final String? commentLastChanged;
  
  @JsonKey(name: 'comment_created_at')
  final String? commentCreatedAt;

  const CommentModel({
    this.commentId,
    this.commentTaskId,
    this.commentUserId,
    this.commentText,
    this.commentStatus,
    this.commentLastChanged,
    this.commentCreatedAt,
  });

  factory CommentModel.fromJson(Map<String, dynamic> json) => 
      _$CommentModelFromJson(json);

  Map<String, dynamic> toJson() => _$CommentModelToJson(this);

  @override
  CommentEntity toEntity() {
    return CommentEntity(
      id: commentId!,
      taskId: commentTaskId!,
      text: commentText!,
    );
  }
}
