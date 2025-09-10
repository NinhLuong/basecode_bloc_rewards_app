import 'package:injectable/injectable.dart';
import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/core/presentation/bloc/base/base_state.dart';
import 'package:magic_rewards/features/top_users/domain/entities/top_users_entity.dart';
import 'package:magic_rewards/features/top_users/domain/parameters/top_users_parameters.dart';
import 'package:magic_rewards/features/top_users/domain/repository/top_users_repository.dart';

part 'top_users_event.dart';

@injectable
class TopUsersBloc extends Bloc<TopUsersEvent, BaseState<TopUsersEntity>> {
  final TopUsersRepository liveOffersRepository;

  TopUsersBloc(this.liveOffersRepository)
      : super(const BaseState<TopUsersEntity>.initial()) {
    on<FetchTopUsersEvent>(_getTopUsers);
  }

  FutureOr<void> _getTopUsers(FetchTopUsersEvent event, emit) async {
    emit(state.loading());
    final result = await liveOffersRepository
        .getTopUsers(TopUsersParameters(halfMonth: event.halfMonth));
    result.fold((l) => emit(state.error(l)), (r) => emit(state.success(r)));
  }
}
