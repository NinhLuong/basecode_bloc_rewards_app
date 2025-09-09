import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/core/domain/entities/base_entity.dart';

part 'tasks_entity.freezed.dart';

@freezed
abstract class TasksEntity extends BaseEntity with _$TasksEntity {
  const TasksEntity._();

  const factory TasksEntity({
    required List<TaskEntity> tasks,
  }) = _TasksEntity;

}

@freezed
abstract class TaskEntity extends BaseEntity with _$TaskEntity {
  const TaskEntity._();

  const factory TaskEntity({
    required String id,
    required String title,
    required String subTitle,
    required String description,
    required String image,
    required String url,
    required String price,
  }) = _TaskEntity;

}
