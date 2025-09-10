import 'package:injectable/injectable.dart';
import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/core/presentation/bloc/base/base_state.dart';
import 'package:magic_rewards/features/rewards/domain/entities/transactions_entity.dart';
import 'package:magic_rewards/features/rewards/domain/parameters/transactions_parameters.dart';
import 'package:magic_rewards/features/rewards/domain/usecases/get_transactions_usecase.dart';

part 'transactions_event.dart';

@injectable
class TransactionsBloc
    extends Bloc<TransactionsEvent, BaseState<TransactionsEntity>> {
  final GetTransactionsUseCase getTransactionsUseCase;

  TransactionsBloc(this.getTransactionsUseCase)
      : super(const BaseState<TransactionsEntity>.initial()) {
    on<FetchTransactionsEvent>(_getTransactions);
  }

  FutureOr<void> _getTransactions(FetchTransactionsEvent event, emit) async {
    emit(state.loading());
    final result =
        await getTransactionsUseCase.call(params: TransactionsParameters());
    result.fold((l) => emit(state.error(l)), (r) => emit(state.success(r)));
  }
}
