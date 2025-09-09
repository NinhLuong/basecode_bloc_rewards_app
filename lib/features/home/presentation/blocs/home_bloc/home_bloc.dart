import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/core/presentation/bloc/base/base_state.dart';
import 'package:magic_rewards/features/home/domain/entities/home_entity.dart';
import 'package:magic_rewards/features/home/domain/parameters/home_parameters.dart';
import 'package:magic_rewards/features/home/domain/usecases/get_home_usecase.dart';

part 'home_event.dart';

class HomeBloc extends Bloc<HomeEvent, BaseState<HomeEntity>> {
  final GetHomeUseCase getHomeUseCase;

  HomeBloc(this.getHomeUseCase) : super(const BaseState<HomeEntity>()) {
    on<FetchHomeEvent>(_getHome);
  }

  FutureOr<void> _getHome(FetchHomeEvent event, emit) async {
    emit(state.loading());
    final result = await getHomeUseCase.call(params: HomeParameters.create());
    result.fold((l) => emit(state.error(l)), (r) => emit(state.success(r)));
  }
}
