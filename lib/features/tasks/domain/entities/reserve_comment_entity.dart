import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/core/domain/entities/base_entity.dart';

part 'reserve_comment_entity.freezed.dart';

@freezed
abstract class ReserveCommentEntity extends BaseEntity with _$ReserveCommentEntity {
  const ReserveCommentEntity._();

  const factory ReserveCommentEntity({
    required CommentEntity commentEntity,
  }) = _ReserveCommentEntity;

}

@freezed
abstract class CommentEntity extends BaseEntity with _$CommentEntity {
  const CommentEntity._();

  const factory CommentEntity({
    required String id,
    required String taskId,
    required String text,
  }) = _CommentEntity;

}
