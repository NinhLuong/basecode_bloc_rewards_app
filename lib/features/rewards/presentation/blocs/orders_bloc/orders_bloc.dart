import 'package:injectable/injectable.dart';
import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/core/presentation/bloc/base/base_state.dart';
import 'package:magic_rewards/features/rewards/domain/entities/orders_entity.dart';
import 'package:magic_rewards/features/rewards/domain/parameters/orders_parameters.dart';
import 'package:magic_rewards/features/rewards/domain/usecases/get_orders_usecase.dart';

part 'orders_event.dart';

@injectable
class OrdersBloc extends Bloc<OrdersEvent, BaseState<OrdersEntity>> {
  final GetOrdersUseCase getOrdersUseCase;

  OrdersBloc(this.getOrdersUseCase) : super(const BaseState<OrdersEntity>.initial()) {
    on<FetchOrdersEvent>(_getOrders);
  }

  FutureOr<void> _getOrders(FetchOrdersEvent event, emit) async {
    emit(state.loading());
    final result = await getOrdersUseCase.call(params: OrdersParameters());
    result.fold((l) => emit(state.error(l)), (r) => emit(state.success(r)));
  }
}
