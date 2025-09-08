import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/features/auth/domain/entities/user_entity.dart';
import 'package:magic_rewards/features/auth/domain/parameters/register_parameters.dart';
import 'package:magic_rewards/features/auth/domain/repository/auth_repository.dart';
import 'package:magic_rewards/features/auth/domain/usecases/register_usecase.dart';

import 'register_usecase_test.mocks.dart';
import '../../../../../helpers/test_helper.dart';

// Generate mocks for the AuthRepository
@GenerateMocks([AuthRepository])
void main() {
  late RegisterUseCase registerUseCase;
  late MockAuthRepository mockAuthRepository;

  setUpAll(() async {
    // Initialize localization for tests
    await TestHelper.setupLocalization();
  });

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    registerUseCase = RegisterUseCase(mockAuthRepository);
  });

  group('RegisterUseCase', () {
    const testUser = UserEntity(
      accountId: 'test-account-id',
      email: 'test@example.com',
      fullName: 'Test User',
      points: '0',
      redeemedPoints: '0',
      userName: 'testuser',
      accessToken: 'test-token',
    );

    const validParameters = RegisterParameters(
      userName: 'testuser',
      password: 'validpassword',
      email: 'test@example.com',
      fullName: 'Test User',
      groupEmail: 'group@example.com',
    );

    test('should return UserEntity when registration is successful', () async {
      // Arrange
      when(mockAuthRepository.register(any))
          .thenAnswer((_) async => const Right(testUser));

      // Act
      final result = await registerUseCase.call(params: validParameters);

      // Assert
      expect(result, const Right(testUser));
      verify(mockAuthRepository.register(validParameters)).called(1);
    });

    test('should return Failure when repository call fails', () async {
      // Arrange
      const failure = ServerFailure('Registration failed', statusCode: 400);
      when(mockAuthRepository.register(any))
          .thenAnswer((_) async => const Left(failure));

      // Act
      final result = await registerUseCase.call(params: validParameters);

      // Assert
      expect(result, const Left(failure));
      verify(mockAuthRepository.register(validParameters)).called(1);
    });

    test('should handle network failure from repository', () async {
      // Arrange
      final networkFailure = NoInternetFailure();
      when(mockAuthRepository.register(any))
          .thenAnswer((_) async => Left(networkFailure));

      // Act
      final result = await registerUseCase.call(params: validParameters);

      // Assert
      expect(result, Left(networkFailure));
      verify(mockAuthRepository.register(validParameters)).called(1);
    });

    test('should pass correct parameters to repository', () async {
      // Arrange
      const customParameters = RegisterParameters(
        userName: 'customuser',
        password: 'custompassword',
        email: 'custom@example.com',
        fullName: 'Custom User',
        groupEmail: 'customgroup@example.com',
      );
      when(mockAuthRepository.register(any))
          .thenAnswer((_) async => const Right(testUser));

      // Act
      await registerUseCase.call(params: customParameters);

      // Assert
      verify(mockAuthRepository.register(customParameters)).called(1);
    });
  });
}