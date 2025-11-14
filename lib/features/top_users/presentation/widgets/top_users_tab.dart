import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_rewards/shared/widgets/components/app_container.dart';
import 'package:bloc_rewards/shared/widgets/components/empty_component.dart';
import 'package:bloc_rewards/shared/widgets/components/failure_component.dart';
import 'package:bloc_rewards/shared/widgets/components/loading_compoent.dart';
import 'package:bloc_rewards/shared/extensions/theme_extensions/text_theme_extension.dart';
import 'package:bloc_rewards/config/di/injectable_config.dart';
import 'package:bloc_rewards/core/presentation/bloc/base/base_state.dart';
import 'package:bloc_rewards/features/top_users/domain/entities/top_users_entity.dart';
import 'package:bloc_rewards/features/top_users/presentation/blocs/top_users_bloc/top_users_bloc.dart';
import 'package:bloc_rewards/features/top_users/presentation/widgets/my_rank_card.dart';
import 'package:bloc_rewards/features/top_users/presentation/widgets/rank_bar.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class TopUsersTap extends StatelessWidget {
  final bool halfMonth;

  TopUsersTap({super.key, this.halfMonth = false});

  final RefreshController _refreshController = RefreshController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TopUsersBloc>(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: BlocBuilder<TopUsersBloc, BaseState<TopUsersEntity>>(
          builder: (context, state) {
            if (state.isInit) getTopUsers(context);
            if (state.isLoading) return const LoadingComponent();
            if (state.isError) {
              return FailureComponent(
                  failure: state.failure, retry: () => getTopUsers(context));
            }
            if (state.isSuccess) {
              return SmartRefresher(
                controller: _refreshController,
                onRefresh: () => getTopUsers(context),
                child: ListView(
                  children: state.isSuccess && state.data!.topThree.isEmpty
                      ? [const EmptyComponent()]
                      : [
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: state.data!.topThree
                                .map((e) => RankBar(
                                    userRank: e,
                                    maxPoints: state.data!.maxPoints))
                                .toList()
                                .reversed
                                .toList(),
                          ),
                          if (state.data!.myRank != null)
                            MyRankCard(userRank: state.data!.myRank!),
                          ...state.data!.rest
                              .map((e) =>
                                  buildRankContainer(context, userRank: e))
                              ,
                          const SizedBox(height: 70),
                        ],
                ),
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }

  Widget buildRankContainer(BuildContext context,
      {required UserRankEntity userRank}) {
    return AppContainer(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        child: Row(
          children: [
            Text(userRank.rank.toString(), style: context.f18600),
            const SizedBox(width: 10),
            Text(userRank.wallet, style: context.f14400),
            const Spacer(),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha:0.2),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(userRank.amount, style: context.f14600)),
          ],
        ));
  }

  void getTopUsers(BuildContext context) {
    context.read<TopUsersBloc>().add(FetchTopUsersEvent(halfMonth: halfMonth));
  }
}
