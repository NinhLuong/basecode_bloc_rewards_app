import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/core/data/models/base_model.dart';
import 'package:magic_rewards/features/tasks/domain/entities/reserve_comment_entity.dart';

part 'reserve_comment_model.freezed.dart';
part 'reserve_comment_model.g.dart';

@freezed
abstract class ReserveCommentModel extends BaseModel<ReserveCommentEntity> with _$ReserveCommentModel {
  const ReserveCommentModel._();

  const factory ReserveCommentModel({
    @JsonKey(name: 'error') bool? error,
    @JsonKey(name: 'error_code') int? errorCode,
    @JsonKey(name: 'data') CommentModel? data,
  }) = _ReserveCommentModel;

  factory ReserveCommentModel.fromJson(Map<String, dynamic> json) =>
      _$ReserveCommentModelFromJson(json);

  @override
  ReserveCommentEntity toEntity() {
    return ReserveCommentEntity(commentEntity: data!.toEntity());
  }
}

@freezed
abstract class CommentModel extends BaseModel<CommentEntity> with _$CommentModel {
  const CommentModel._();

  const factory CommentModel({
    @JsonKey(name: 'comment_id') String? commentId,
    @JsonKey(name: 'comment_task_id') String? commentTaskId,
    @JsonKey(name: 'comment_user_id') String? commentUserId,
    @JsonKey(name: 'comment_text') String? commentText,
    @JsonKey(name: 'comment_status') String? commentStatus,
    @JsonKey(name: 'comment_last_changed') String? commentLastChanged,
    @JsonKey(name: 'comment_created_at') String? commentCreatedAt,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);

  @override
  CommentEntity toEntity() {
    return CommentEntity(
      id: commentId!,
      taskId: commentTaskId!,
      text: commentText!,
    );
  }
}
