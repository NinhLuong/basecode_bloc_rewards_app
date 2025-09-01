import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/core/presentation/bloc/base/base_state.dart';
import 'package:magic_rewards/features/auth/domain/entities/user_entity.dart';
import 'package:magic_rewards/features/auth/domain/parameters/register_parameters.dart';
import 'package:magic_rewards/features/auth/domain/usecases/register_usecase.dart';

part 'register_event.dart';

class RegisterBloc extends Bloc<RegisterEvent, BaseState<UserEntity>> {
  final RegisterUsecase registerUsecase;

  RegisterBloc(this.registerUsecase) : super(const BaseState<UserEntity>()) {
    on<RegisterButtonTappedEvent>(_register);
  }

  FutureOr<void> _register(RegisterButtonTappedEvent event, emit) async {
    emit(state.loading());
    final result = await registerUsecase.call(
      params: RegisterParameters(
        email: event.email,
        fullName: event.fullName,
        password: event.password,
        userName: event.userName,
        groupEmail: event.secondaryEmail,
      ),
    );
    result.fold((l) => emit(state.error(l)), (r) => emit(state.success(r)));
  }
}
