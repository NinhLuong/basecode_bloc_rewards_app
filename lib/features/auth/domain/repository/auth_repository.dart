import 'package:dartz/dartz.dart';
import 'package:bloc_rewards/config/errors/failure.dart';
import 'package:bloc_rewards/features/auth/domain/entities/check_email_entity.dart';
import 'package:bloc_rewards/features/auth/domain/entities/user_entity.dart';
import 'package:bloc_rewards/features/auth/domain/parameters/check_email_parameters.dart';
import 'package:bloc_rewards/features/auth/domain/parameters/login_parameters.dart';
import 'package:bloc_rewards/features/auth/domain/parameters/register_parameters.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> login(LoginParameters parameters);

  Future<Either<Failure, UserEntity>> register(RegisterParameters parameters);

  Future<Either<Failure, CheckEmailEntity>> checkEmail(
      CheckEmailParameters parameters);
}
