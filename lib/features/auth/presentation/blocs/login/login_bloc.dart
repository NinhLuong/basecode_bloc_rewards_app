import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:magic_rewards/core/presentation/bloc/base/base_state.dart';
import 'package:magic_rewards/features/auth/domain/entities/user_entity.dart';
import 'package:magic_rewards/features/auth/domain/parameters/login_parameters.dart';
import 'package:magic_rewards/features/auth/domain/usecases/login_usecase.dart';

part 'login_event.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, BaseState<UserEntity>> {
  final LoginUseCase _loginUseCase;

  LoginBloc(this._loginUseCase) : super(const BaseState<UserEntity>.initial()) {
    on<LoginButtonTappedEvent>(_login, transformer: restartable());
  }

  FutureOr<void> _login(LoginButtonTappedEvent event, emit) async {
    emit(state.loading());
    final params = LoginParameters(username: event.username, password: event.password);
    final result = await _loginUseCase.call(params: params);
    result.fold(
      (failure) => emit(state.error(failure)),
      (user) => emit(state.success(user)),
    );
  }
}
