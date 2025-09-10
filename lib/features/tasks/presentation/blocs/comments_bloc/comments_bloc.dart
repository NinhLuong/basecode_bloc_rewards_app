import 'package:injectable/injectable.dart';
import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/core/presentation/bloc/base/base_state.dart';
import 'package:magic_rewards/features/tasks/domain/entities/reserve_comment_entity.dart';
import 'package:magic_rewards/features/tasks/domain/parameters/reserve_comment_parameters.dart';
import 'package:magic_rewards/features/tasks/domain/repository/tasks_repository.dart';

part 'comments_event.dart';

@injectable
class CommentsBloc
    extends Bloc<CommentsEvent, BaseState<ReserveCommentEntity>> {
  final TasksRepository tasksRepository;

  CommentsBloc(this.tasksRepository)
      : super(const BaseState<ReserveCommentEntity>.initial()) {
    on<ReserveCommentEvent>(_reserveComment);
  }

  FutureOr<void> _reserveComment(ReserveCommentEvent event, emit) async {
    emit(state.loading());
    final result = await tasksRepository
        .reserveComment(ReserveCommentParameters(taskId: event.taskId));
    result.fold((l) => emit(state.error(l)), (r) => emit(state.success(r)));
  }
}
