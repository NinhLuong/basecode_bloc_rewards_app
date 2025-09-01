import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/shared/widgets/components/empty_component.dart';
import 'package:magic_rewards/shared/widgets/components/failuer_component.dart';
import 'package:magic_rewards/shared/widgets/components/loading_compoent.dart';
import 'package:magic_rewards/config/di/di_service.dart';
import 'package:magic_rewards/core/presentation/bloc/base/base_state.dart';
import 'package:magic_rewards/features/tasks/dmain/entities/tasks_orders_entity.dart';
import 'package:magic_rewards/features/tasks/presentation/blocs/tasks_orders_bloc/tasks_orders_bloc.dart';
import 'package:magic_rewards/features/tasks/presentation/components/task_order_card.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class TasksOrdersSection extends StatelessWidget {
  TasksOrdersSection({Key? key}) : super(key: key);

  final RefreshController refreshController = RefreshController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => di<TasksOrdersBloc>(),
        child: BlocBuilder<TasksOrdersBloc, BaseState<TasksOrdersEntity>>(
          builder: (context, state) {
            if (state.isInit) getTasksOrders(context);
            if (state.isLoading) {
              return const LoadingComponent();
            }
            if (state.isError) {
              return FailureComponent(
                failure: state.failure,
                retry: () => getTasksOrders(context),
              );
            }
            if (state.isSuccess) {
              return SmartRefresher(
                controller: refreshController,
                onRefresh: () => context
                    .read<TasksOrdersBloc>()
                    .add(const FetchTasksOrdersEvent()),
                child: ListView(
                  children: (state.data?.orders.isEmpty ?? true)
                      ? [const EmptyComponent()]
                      : [
                          const SizedBox(height: 10),
                          ...state.data?.orders
                                  .map((e) => TaskOrderCard(order: e))
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

  void getTasksOrders(BuildContext context) {
    context.read<TasksOrdersBloc>().add(const FetchTasksOrdersEvent());
  }
}
