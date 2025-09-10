import 'package:injectable/injectable.dart';
import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/core/presentation/bloc/base/base_state.dart';
import 'package:magic_rewards/features/rewards/domain/entities/payouts_entity.dart';
import 'package:magic_rewards/features/rewards/domain/parameters/payouts_parameters.dart';
import 'package:magic_rewards/features/rewards/domain/usecases/get_payouts_usecase.dart';

part 'payouts_event.dart';

@injectable
class PayoutsBloc extends Bloc<PayoutsEvent, BaseState<PayoutsEntity>> {
  final GetPayoutsUseCase getPayoutsUseCase;

  PayoutsBloc(this.getPayoutsUseCase)
      : super(const BaseState<PayoutsEntity>.initial()) {
    on<FetchPayoutsEvent>(_getPayouts);
  }

  FutureOr<void> _getPayouts(FetchPayoutsEvent event, emit) async {
    emit(state.loading());
    final result = await getPayoutsUseCase.call(params: PayoutsParameters());
    result.fold((l) => emit(state.error(l)), (r) => emit(state.success(r)));
  }
}
