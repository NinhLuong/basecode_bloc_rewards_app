import 'package:injectable/injectable.dart';
import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/core/presentation/bloc/base/base_state.dart';
import 'package:magic_rewards/features/profile/domain/entities/profile_entity.dart';
import 'package:magic_rewards/features/profile/domain/parameters/profile_parameters.dart';
import 'package:magic_rewards/features/profile/domain/usecases/get_profile_usecase.dart';

part 'profile_event.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, BaseState<ProfileEntity>> {
  final GetProfileUseCase getProfileUseCase;

  ProfileBloc(this.getProfileUseCase)
      : super(const BaseState<ProfileEntity>.initial()) {
    on<FetchProfileEvent>(_getProfile);
  }

  FutureOr<void> _getProfile(FetchProfileEvent event, emit) async {
    emit(state.loading());
    final result = await getProfileUseCase.call(params: ProfileParameters());
    result.fold((l) => emit(state.error(l)), (r) => emit(state.success(r)));
  }
}
