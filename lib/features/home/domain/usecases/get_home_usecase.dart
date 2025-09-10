import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/core/domain/usecases/base_usecase.dart';
import 'package:magic_rewards/features/home/domain/entities/home_entity.dart';
import 'package:magic_rewards/features/home/domain/parameters/home_parameters.dart';
import 'package:magic_rewards/features/home/domain/repository/home_repository.dart';

@lazySingleton
class GetHomeUseCase extends UseCase<HomeEntity, HomeParameters> {
  final HomeRepository homeRepository;

  GetHomeUseCase(this.homeRepository);

  @override
  Future<Either<Failure, HomeEntity>> call({required HomeParameters params}) async {
    return await homeRepository.getHome(params);
  }
}
