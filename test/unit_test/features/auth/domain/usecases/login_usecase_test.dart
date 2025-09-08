import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/features/auth/domain/entities/user_entity.dart';
import 'package:magic_rewards/features/auth/domain/parameters/login_parameters.dart';
import 'package:magic_rewards/features/auth/domain/repository/auth_repository.dart';
import 'package:magic_rewards/features/auth/domain/usecases/login_usecase.dart';

import 'login_usecase_test.mocks.dart';
import '../../../../../helpers/test_helper.dart';

// Generate mocks for the AuthRepository
@GenerateMocks([AuthRepository])
void main() {
  late LoginUseCase loginUseCase;
  late MockAuthRepository mockAuthRepository;

  setUpAll(() async {
    // Initialize localization for tests
    await TestHelper.setupLocalization();
  });

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    loginUseCase = LoginUseCase(mockAuthRepository);
  });

  group('LoginUseCase', () {
    const testUser = UserEntity(
      accountId: 'test-account-id',
      email: 'test@example.com',
      fullName: 'Test User',
      points: '100',
      redeemedPoints: '50',
      userName: 'testuser',
      accessToken: 'test-token',
    );

    const validParameters = LoginParameters(
      username: 'testuser',
      password: 'validpassword',
    );

    const invalidUsernameParameters = LoginParameters(
      username: '',
      password: 'validpassword',
    );

    const invalidPasswordParameters = LoginParameters(
      username: 'testuser',
      password: '12345', // Less than 6 characters
    );

    test('should return UserEntity when login is successful', () async {
      // Arrange
      when(mockAuthRepository.login(any))
          .thenAnswer((_) async => const Right(testUser));

      // Act
      final result = await loginUseCase.call(params: validParameters);

      // Assert
      expect(result, const Right(testUser));
      verify(mockAuthRepository.login(validParameters)).called(1);
    });

    test('should return Failure when repository call fails', () async {
      // Arrange
      const failure = ServerFailure('Server error', statusCode: 500);
      when(mockAuthRepository.login(any))
          .thenAnswer((_) async => const Left(failure));

      // Act
      final result = await loginUseCase.call(params: validParameters);

      // Assert
      expect(result, const Left(failure));
      verify(mockAuthRepository.login(validParameters)).called(1);
    });

    test('should return Failure when username is empty', () async {
      // Act
      final result = await loginUseCase.call(params: invalidUsernameParameters);

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure.message, 'Invalid credentials'),
        (_) => fail('Should return failure'),
      );
      // Verify repository is not called when validation fails
      verifyNever(mockAuthRepository.login(any));
    });

    test('should return Failure when password is too short', () async {
      // Act
      final result = await loginUseCase.call(params: invalidPasswordParameters);

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure.message, 'Invalid credentials'),
        (_) => fail('Should return failure'),
      );
      // Verify repository is not called when validation fails
      verifyNever(mockAuthRepository.login(any));
    });

    test('should validate password length exactly at boundary (6 characters)', () async {
      // Arrange
      const boundaryParameters = LoginParameters(
        username: 'testuser',
        password: '123456', // Exactly 6 characters (valid)
      );
      when(mockAuthRepository.login(any))
          .thenAnswer((_) async => const Right(testUser));

      // Act
      final result = await loginUseCase.call(params: boundaryParameters);

      // Assert
      expect(result, const Right(testUser));
      verify(mockAuthRepository.login(boundaryParameters)).called(1);
    });

    test('should validate password length just below boundary (5 characters)', () async {
      // Arrange
      const boundaryParameters = LoginParameters(
        username: 'testuser',
        password: '12345', // Exactly 5 characters (invalid)
      );

      // Act
      final result = await loginUseCase.call(params: boundaryParameters);

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure.message, 'Invalid credentials'),
        (_) => fail('Should return failure'),
      );
      verifyNever(mockAuthRepository.login(any));
    });

    test('should handle network failure from repository', () async {
      // Arrange
      final networkFailure = NoInternetFailure();
      when(mockAuthRepository.login(any))
          .thenAnswer((_) async => Left(networkFailure));

      // Act
      final result = await loginUseCase.call(params: validParameters);

      // Assert
      expect(result, Left(networkFailure));
      verify(mockAuthRepository.login(validParameters)).called(1);
    });

    test('should handle session expired failure from repository', () async {
      // Arrange
      final sessionExpiredFailure = SessionExpiredFailure();
      when(mockAuthRepository.login(any))
          .thenAnswer((_) async => Left(sessionExpiredFailure));

      // Act
      final result = await loginUseCase.call(params: validParameters);

      // Assert
      expect(result, Left(sessionExpiredFailure));
      verify(mockAuthRepository.login(validParameters)).called(1);
    });

    test('should pass correct parameters to repository', () async {
      // Arrange
      const customParameters = LoginParameters(
        username: 'customuser',
        password: 'custompassword',
        clientId: 12345,
      );
      when(mockAuthRepository.login(any))
          .thenAnswer((_) async => const Right(testUser));

      // Act
      await loginUseCase.call(params: customParameters);

      // Assert
      verify(mockAuthRepository.login(customParameters)).called(1);
    });
  });
}