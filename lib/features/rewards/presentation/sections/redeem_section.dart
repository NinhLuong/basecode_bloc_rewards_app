import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/shared/widgets/components/empty_component.dart';
import 'package:magic_rewards/shared/widgets/components/failuer_component.dart';
import 'package:magic_rewards/shared/widgets/components/loading_compoent.dart';
import 'package:magic_rewards/config/di/di_service.dart';
import 'package:magic_rewards/core/presentation/bloc/base/base_state.dart';
import 'package:magic_rewards/features/rewards/domain/entities/payouts_entity.dart';
import 'package:magic_rewards/features/rewards/presentation/blocs/payouts_bloc/payouts_bloc.dart';
import 'package:magic_rewards/features/rewards/presentation/components/balance_card.dart';
import 'package:magic_rewards/features/rewards/presentation/components/payout_card.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class RedeemSection extends StatelessWidget {
  RedeemSection({Key? key}) : super(key: key);

  final RefreshController refreshController = RefreshController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => di<PayoutsBloc>(),
        child: BlocBuilder<PayoutsBloc, BaseState<PayoutsEntity>>(
          builder: (context, state) {
            if (state.isInit) getPayouts(context);
            if (state.isLoading) {
              return const LoadingComponent();
            }
            if (state.isError) return FailureComponent(failure: state.failure);
            if (state.isSuccess) {
              return SmartRefresher(
                controller: refreshController,
                onRefresh: () =>
                    context.read<PayoutsBloc>().add(const FetchPayoutsEvent()),
                child: ListView(
                  children: (state.data?.payouts.isEmpty ?? true)
                      ? [const EmptyComponent()]
                      : [
                          const SizedBox(height: 10),
                          BalanceCard(
                              balance: state.data?.balance ?? 0,
                              percent: state.data?.redeemPercent ?? 0,
                              minPayout: state.data?.minPayout ?? 0),
                          const SizedBox(height: 10),
                          ...state.data?.payouts
                                  .map((e) => PayoutCard(payout: e))
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

  void getPayouts(BuildContext context) {
    context.read<PayoutsBloc>().add(const FetchPayoutsEvent());
  }
}
