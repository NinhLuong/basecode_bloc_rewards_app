import 'package:injectable/injectable.dart';
import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/features/home/domain/entities/home_with_user_entity.dart';
import 'package:magic_rewards/features/home/domain/parameters/home_parameters.dart';
import 'package:magic_rewards/features/home/domain/usecases/get_home_usecase.dart';
import 'package:magic_rewards/features/auth/data/datasources/local/user_local_data_source.dart';
import 'package:magic_rewards/features/auth/domain/entities/user_entity.dart';
import 'home_state.dart';

part 'home_event.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetHomeUseCase getHomeUseCase;
  final UserLocalDataSource userLocalDataSource;

  HomeBloc(
    this.getHomeUseCase,
    this.userLocalDataSource,
  ) : super(const HomeState.initial()) {
    on<FetchHomeEvent>(_getHomeAndUser);
    on<FetchHomeAndUserEvent>(_getHomeAndUser);
  }

  FutureOr<void> _getHomeAndUser(HomeEvent event, Emitter<HomeState> emit) async {
    try {
      emit(const HomeState.loading());
      
      // Fetch both home data and user data concurrently
      final homeResult = await getHomeUseCase.call(params: HomeParameters());
      final userData = await _getUserData();
      
      homeResult.fold(
        (failure) => emit(HomeState.error(failure)),
        (homeData) {
          if (userData != null) {
            final combinedData = HomeWithUserEntity(
              homeData: homeData,
              userData: userData,
            );
            emit(HomeState.success(combinedData));
          } else {
            emit(const HomeState.error(Failure('User data not found')));
          }
        },
      );
    } catch (e) {
      emit(HomeState.error(Failure(e.toString())));
    }
  }

  Future<UserEntity?> _getUserData() async {
    return await userLocalDataSource.getUserData();
  }
}
