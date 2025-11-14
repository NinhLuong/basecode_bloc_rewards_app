import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_rewards/shared/widgets/components/empty_component.dart';
import 'package:bloc_rewards/shared/widgets/components/failure_component.dart';
import 'package:bloc_rewards/shared/widgets/components/loading_compoent.dart';
import 'package:bloc_rewards/config/di/injectable_config.dart';
import 'package:bloc_rewards/core/presentation/bloc/base/base_state.dart';
import 'package:bloc_rewards/features/tasks/domain/entities/tasks_entity.dart';
import 'package:bloc_rewards/features/tasks/presentation/blocs/tasks_bloc/tasks_bloc.dart';
import 'package:bloc_rewards/features/tasks/presentation/widgets/task_card.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class TasksSection extends StatelessWidget {
  TasksSection({super.key});

  final RefreshController refreshController = RefreshController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<TasksBloc>(),
        child: BlocBuilder<TasksBloc, BaseState<TasksEntity>>(
          builder: (context, state) {
            if (state.isInit) getTasks(context);
            if (state.isLoading) {
              return const LoadingComponent();
            }
            if (state.isError) {
              return FailureComponent(
                failure: state.failure,
                retry: () => getTasks(context),
              );
            }
            if (state.isSuccess) {
              return SmartRefresher(
                controller: refreshController,
                onRefresh: () =>
                    context.read<TasksBloc>().add(const FetchTasksEvent()),
                child: ListView(
                  children: (state.data?.tasks.isEmpty ?? true)
                      ? [const EmptyComponent()]
                      : [
                          const SizedBox(height: 10),
                          ...state.data?.tasks
                                  .map((e) => TaskCard(task: e))
                                  .toList() ??
                              [],
                          const SizedBox(height: 100),
                        ],
                ),
              );
            }
            return const SizedBox();
          },
        ));
  }

  void getTasks(BuildContext context) {
    context.read<TasksBloc>().add(const FetchTasksEvent());
  }
}
