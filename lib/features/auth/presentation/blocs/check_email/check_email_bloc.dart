import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/features/auth/domain/entities/check_email_entity.dart';
import 'package:magic_rewards/features/auth/domain/parameters/check_email_parameters.dart';
import 'package:magic_rewards/features/auth/domain/usecases/check_email_usecase.dart';

import '../../../../../core/presentation/bloc/base/base_state.dart';
import 'package:injectable/injectable.dart';

part 'check_email_event.dart';

@injectable
class CheckEmailBloc
    extends Bloc<CheckEmailEvent, BaseState<CheckEmailEntity>> {
  final CheckEmailUseCase _checkEmailUseCase;

  CheckEmailBloc(this._checkEmailUseCase)
      : super(const BaseState<CheckEmailEntity>.initial()) {
    on<CheckEmailButtonTappedEvent>(_checkEmail, transformer: restartable());
  }

  FutureOr<void> _checkEmail(CheckEmailButtonTappedEvent event, emit) async {
    emit(state.loading());
    final result = await _checkEmailUseCase.call(
      params: CheckEmailParameters(email: event.email),
    );
    result.fold((l) => emit(state.error(l)), (r) => emit(state.success(r)));
  }
}
