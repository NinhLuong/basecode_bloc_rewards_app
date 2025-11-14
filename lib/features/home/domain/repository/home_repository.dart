import 'package:dartz/dartz.dart';
import 'package:bloc_rewards/config/errors/failure.dart';
import 'package:bloc_rewards/features/home/domain/entities/home_entity.dart';
import 'package:bloc_rewards/features/home/domain/parameters/home_parameters.dart';

abstract class HomeRepository {
  Future<Either<Failure, HomeEntity>> getHome(HomeParameters parameters);
}
