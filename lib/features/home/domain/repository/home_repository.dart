import 'package:dartz/dartz.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/features/home/domain/entities/home_entity.dart';
import 'package:magic_rewards/features/home/domain/parameters/home_parameters.dart';

abstract class HomeRepository {
  Future<Either<Failure, HomeEntity>> getHome(HomeParameters parameters);
}
