import 'package:flutter/foundation.dart';
import 'package:magic_rewards/core/domain/entities/base_entity.dart';

@immutable
class TasksEntity extends BaseEntity {
  final List<TaskEntity> tasks;

  const TasksEntity({required this.tasks});

  @override
  List<Object?> get props => [tasks];
}

@immutable
class TaskEntity extends BaseEntity {
  final String id;
  final String title;
  final String subTitle;
  final String description;
  final String image;
  final String url;
  final String price;

  const TaskEntity({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.image,
    required this.url,
    required this.price,
  });

  @override
  List<Object?> get props =>
      [id, title, subTitle, description, image, url, price];
}
