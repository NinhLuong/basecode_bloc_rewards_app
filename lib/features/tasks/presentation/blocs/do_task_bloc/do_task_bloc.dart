import 'package:injectable/injectable.dart';
import 'dart:async';
import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/core/presentation/bloc/base/base_state.dart';
import 'package:magic_rewards/features/tasks/domain/parameters/add_task_order_parameters.dart';
import 'package:magic_rewards/features/tasks/domain/repository/tasks_repository.dart';

part 'do_task_event.dart';

@injectable
class DoTaskBloc extends Bloc<DoTaskEvent, BaseState<void>> {
  final TasksRepository tasksRepository;

  DoTaskBloc(this.tasksRepository) : super(const BaseState<void>.initial()) {
    on<DoTaskButtonPressedEvent>(_doTask);
  }

  FutureOr<void> _doTask(DoTaskButtonPressedEvent event, emit) async {
    emit(state.loading());
    final result = await tasksRepository.addTaskOrder(AddTaskOrderParameters(
      taskId: event.taskId,
      commentId: event.commentId,
      name: event.name,
      url: event.url,
      email: event.email,
      text: event.text,
      image: event.image,
      timeStamp: event.timeStamp,
    ));
    result.fold((l) => emit(state.error(l)), (r) => emit(state.success(r)));
  }
}
