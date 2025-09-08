import 'package:magic_rewards/core/domain/entities/base_entity.dart';

class ReserveCommentEntity extends BaseEntity {
  final CommentEntity commentEntity;

  const ReserveCommentEntity({required this.commentEntity});

  @override
  List<Object?> get props => [commentEntity];
}

class CommentEntity extends BaseEntity {
  const CommentEntity({
    required this.id,
    required this.taskId,
    required this.text,
  });

  final String id;
  final String taskId;
  final String text;

  @override
  List<Object?> get props => [id, taskId, text];
}
