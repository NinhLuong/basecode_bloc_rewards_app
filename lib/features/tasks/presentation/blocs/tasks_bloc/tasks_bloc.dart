import 'package:injectable/injectable.dart';
import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/core/presentation/bloc/base/base_state.dart';
import 'package:magic_rewards/features/tasks/domain/entities/tasks_entity.dart';
import 'package:magic_rewards/features/tasks/domain/parameters/tasks_parameters.dart';
import 'package:magic_rewards/features/tasks/domain/repository/tasks_repository.dart';

part 'tasks_event.dart';

@injectable
class TasksBloc extends Bloc<TasksEvent, BaseState<TasksEntity>> {
  final TasksRepository tasksRepository;

  TasksBloc(this.tasksRepository) : super(const BaseState<TasksEntity>.initial()) {
    on<FetchTasksEvent>(_getTasks);
  }

  FutureOr<void> _getTasks(FetchTasksEvent event, emit) async {
    emit(state.loading());
    final result = await tasksRepository.getTasks(TasksParameters());
    result.fold((l) => emit(state.error(l)), (r) => emit(state.success(r)));
  }
}
