import 'package:dartz/dartz.dart';
import 'package:magic_rewards/config/errors/errors_handler.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/features/home/data/data_source/home_data_source.dart';
import 'package:magic_rewards/features/home/domain/entities/home_entity.dart';
import 'package:magic_rewards/features/home/domain/parameters/home_parameters.dart';
import 'package:magic_rewards/features/home/domain/repository/home_repository.dart';

class HomeRepositoryImp extends HomeRepository {
  final HomeDataSource homeDataSource;

  HomeRepositoryImp(this.homeDataSource);

  @override
  Future<Either<Failure, HomeEntity>> getHome(HomeParameters parameters) {
    return ErrorsHandler.handleEither(() => homeDataSource.getHome(parameters));
  }
}
