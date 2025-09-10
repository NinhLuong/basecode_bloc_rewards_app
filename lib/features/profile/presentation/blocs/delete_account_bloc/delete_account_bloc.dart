import 'package:injectable/injectable.dart';
import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/core/presentation/bloc/base/base_state.dart';
import 'package:magic_rewards/features/profile/domain/parameters/delete_account_parameters.dart';
import 'package:magic_rewards/features/profile/domain/usecases/delete_account_usecase.dart';

part 'delete_account_event.dart';

@injectable
class DeleteAccountBloc extends Bloc<DeleteAccountEvent, BaseState<void>> {
  final DeleteAccountUseCase deleteAccountUseCase;

  DeleteAccountBloc(this.deleteAccountUseCase) : super(const BaseState<void>.initial()) {
    on<DeleteAccountButtonPressedEvent>(_deleteAccount);
  }

  FutureOr<void> _deleteAccount(
      DeleteAccountButtonPressedEvent event, emit) async {
    emit(state.loading());
    final result =
        await deleteAccountUseCase.call(params: DeleteAccountParameters());
    result.fold((l) => emit(state.error(l)), (r) => emit(state.success(r)));
  }
}
