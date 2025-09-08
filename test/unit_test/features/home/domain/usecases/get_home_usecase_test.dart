import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/features/home/domain/entities/home_entity.dart';
import 'package:magic_rewards/features/home/domain/parameters/home_parameters.dart';
import 'package:magic_rewards/features/home/domain/repository/home_repository.dart';
import 'package:magic_rewards/features/home/domain/usecases/get_home_usecase.dart';

import 'get_home_usecase_test.mocks.dart';
import '../../../../../helpers/test_helper.dart';

// Generate mocks for the HomeRepository
@GenerateMocks([HomeRepository])
void main() {
  late GetHomeUseCase getHomeUseCase;
  late MockHomeRepository mockHomeRepository;

  setUpAll(() async {
    // Initialize localization for tests
    await TestHelper.setupLocalization();
  });

  setUp(() {
    mockHomeRepository = MockHomeRepository();
    getHomeUseCase = GetHomeUseCase(mockHomeRepository);
  });

  group('GetHomeUseCase', () {
    const testOfferWallEntity = OfferWallEntity(
      id: 'offer-1',
      title: 'Test Offer',
      subtitle: 'Test subtitle',
      url: 'https://example.com',
      type: 'survey',
      thumbnail: 'https://example.com/thumb.jpg',
      position: '1',
      status: 'active',
    );

    const testHomeEntity = HomeEntity(
      balance: '150',
      offerWalls: [testOfferWallEntity],
    );

    final validParameters = HomeParameters();

    test('should return HomeEntity when repository call is successful', () async {
      // Arrange
      when(mockHomeRepository.getHome(any))
          .thenAnswer((_) async => const Right(testHomeEntity));

      // Act
      final result = await getHomeUseCase.call(params: validParameters);

      // Assert
      expect(result, const Right(testHomeEntity));
      verify(mockHomeRepository.getHome(validParameters)).called(1);
    });

    test('should return Failure when repository call fails with server error', () async {
      // Arrange
      const failure = ServerFailure('Server error', statusCode: 500);
      when(mockHomeRepository.getHome(any))
          .thenAnswer((_) async => const Left(failure));

      // Act
      final result = await getHomeUseCase.call(params: validParameters);

      // Assert
      expect(result, const Left(failure));
      verify(mockHomeRepository.getHome(validParameters)).called(1);
    });

    test('should return Failure when repository call fails with network error', () async {
      // Arrange
      final networkFailure = NoInternetFailure();
      when(mockHomeRepository.getHome(any))
          .thenAnswer((_) async => Left(networkFailure));

      // Act
      final result = await getHomeUseCase.call(params: validParameters);

      // Assert
      expect(result, Left(networkFailure));
      verify(mockHomeRepository.getHome(validParameters)).called(1);
    });

    test('should return Failure when repository call fails with session expired', () async {
      // Arrange
      final sessionExpiredFailure = SessionExpiredFailure();
      when(mockHomeRepository.getHome(any))
          .thenAnswer((_) async => Left(sessionExpiredFailure));

      // Act
      final result = await getHomeUseCase.call(params: validParameters);

      // Assert
      expect(result, Left(sessionExpiredFailure));
      verify(mockHomeRepository.getHome(validParameters)).called(1);
    });

    test('should return Failure when repository call fails with unknown error', () async {
      // Arrange
      final unknownFailure = UnknownFailure();
      when(mockHomeRepository.getHome(any))
          .thenAnswer((_) async => Left(unknownFailure));

      // Act
      final result = await getHomeUseCase.call(params: validParameters);

      // Assert
      expect(result, Left(unknownFailure));
      verify(mockHomeRepository.getHome(validParameters)).called(1);
    });

    test('should pass correct parameters to repository', () async {
      // Arrange
      final customParameters = HomeParameters();
      when(mockHomeRepository.getHome(any))
          .thenAnswer((_) async => const Right(testHomeEntity));

      // Act
      await getHomeUseCase.call(params: customParameters);

      // Assert
      verify(mockHomeRepository.getHome(customParameters)).called(1);
    });

    test('should handle multiple consecutive calls', () async {
      // Arrange
      when(mockHomeRepository.getHome(any))
          .thenAnswer((_) async => const Right(testHomeEntity));

      // Act
      await getHomeUseCase.call(params: validParameters);
      await getHomeUseCase.call(params: validParameters);

      // Assert
      verify(mockHomeRepository.getHome(validParameters)).called(2);
    });

    test('should handle empty offerWalls list', () async {
      // Arrange
      const emptyHomeEntity = HomeEntity(
        balance: '0',
        offerWalls: [],
      );
      when(mockHomeRepository.getHome(any))
          .thenAnswer((_) async => const Right(emptyHomeEntity));

      // Act
      final result = await getHomeUseCase.call(params: validParameters);

      // Assert
      expect(result, const Right(emptyHomeEntity));
      result.fold(
        (failure) => fail('Should return success'),
        (home) {
          expect(home.balance, '0');
          expect(home.offerWalls, isEmpty);
        },
      );
      verify(mockHomeRepository.getHome(validParameters)).called(1);
    });

    test('should handle multiple offerWalls', () async {
      // Arrange
      const multipleOfferWallsEntity = HomeEntity(
        balance: '500',
        offerWalls: [
          OfferWallEntity(
            id: 'offer-1',
            title: 'Survey Offer',
            subtitle: 'Complete survey',
            url: 'https://example.com/survey',
            type: 'survey',
            thumbnail: 'https://example.com/survey.jpg',
            position: '1',
            status: 'active',
          ),
          OfferWallEntity(
            id: 'offer-2',
            title: 'Video Offer',
            subtitle: 'Watch video',
            url: 'https://example.com/video',
            type: 'video',
            thumbnail: 'https://example.com/video.jpg',
            position: '2',
            status: 'active',
          ),
        ],
      );
      when(mockHomeRepository.getHome(any))
          .thenAnswer((_) async => const Right(multipleOfferWallsEntity));

      // Act
      final result = await getHomeUseCase.call(params: validParameters);

      // Assert
      expect(result, const Right(multipleOfferWallsEntity));
      result.fold(
        (failure) => fail('Should return success'),
        (home) {
          expect(home.balance, '500');
          expect(home.offerWalls, hasLength(2));
          expect(home.offerWalls[0].type, 'survey');
          expect(home.offerWalls[1].type, 'video');
        },
      );
      verify(mockHomeRepository.getHome(validParameters)).called(1);
    });
  });
}
