import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/core/presentation/bloc/base/base_state.dart';
import 'package:magic_rewards/features/rewards/domain/parameters/redeem_parameters.dart';
import 'package:magic_rewards/features/rewards/domain/usecases/redeem_usecase.dart';

part 'redeem_event.dart';

class RedeemBloc extends Bloc<RedeemEvent, BaseState<void>> {
  final RedeemUsecase redeemUsecase;

  RedeemBloc(this.redeemUsecase) : super(const BaseState<void>()) {
    on<RedeemButtonPressedEvent>(_redeem);
  }

  FutureOr<void> _redeem(RedeemButtonPressedEvent event, emit) async {
    emit(state.loading());
    final result = await redeemUsecase
        .call(params: RedeemParameters(name: event.name, value: event.value));
    result.fold((l) => emit(state.error(l)), (r) => emit(state.success(r)));
  }
}
