import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/features/auth/data/datasources/remote/auth_datasource.dart';
import 'package:magic_rewards/features/auth/data/datasources/local/user_local_data_source.dart';
import 'package:magic_rewards/features/auth/data/models/user_model.dart';
import 'package:magic_rewards/features/auth/data/repository/auth_repository_imp.dart';
import 'package:magic_rewards/features/auth/domain/parameters/login_parameters.dart';
import 'package:magic_rewards/features/auth/domain/parameters/register_parameters.dart';
import 'package:magic_rewards/features/auth/domain/parameters/check_email_parameters.dart';
import 'package:magic_rewards/features/auth/data/models/check_email_model.dart';

import 'auth_repository_test.mocks.dart';
import '../../../../../helpers/test_helper.dart';

// Generate mocks for dependencies
@GenerateMocks([
  AuthDataSource,
  UserLocalDataSource,
])
void main() {
  late AuthRepositoryImp authRepository;
  late MockAuthDataSource mockAuthDataSource;
  late MockUserLocalDataSource mockUserLocalDataSource;

  setUpAll(() async {
    // Initialize localization for tests
    await TestHelper.setupLocalization();
  });

  setUp(() {
    mockAuthDataSource = MockAuthDataSource();
    mockUserLocalDataSource = MockUserLocalDataSource();
    authRepository = AuthRepositoryImp(
      mockAuthDataSource,
      mockUserLocalDataSource,
    );
  });

  group('AuthRepository', () {
    final testUserModel = UserModel(
      accessToken: 'test-access-token',
      accountId: 'test-account-id',
      account: const [
        Account(
          id: 'account-1',
          email: 'test@example.com',
          fullname: 'Test User',
          username: 'testuser',
          points: '100',
          redeemedPoints: '50',
        ),
      ],
    );

    const testLoginParameters = LoginParameters(
      username: 'testuser',
      password: 'testpassword',
    );

    const testRegisterParameters = RegisterParameters(
      userName: 'newuser',
      password: 'newpassword',
      email: 'new@example.com',
      fullName: 'New User',
      groupEmail: 'group@example.com',
    );

    const testCheckEmailParameters = CheckEmailParameters(
      email: 'check@example.com',
    );

    group('login', () {
      test('should return UserEntity when data source call is successful', () async {
        // Arrange
        when(mockAuthDataSource.login(any))
            .thenAnswer((_) async => testUserModel);

        // Act
        final result = await authRepository.login(testLoginParameters);

        // Assert
        expect(result.isRight(), true);
        result.fold(
          (failure) => fail('Should return success'),
          (user) {
            expect(user.accessToken, 'test-access-token');
            expect(user.accountId, 'test-account-id');
            expect(user.email, 'test@example.com');
            expect(user.fullName, 'Test User');
            expect(user.userName, 'testuser');
            expect(user.points, '100');
            expect(user.redeemedPoints, '50');
          },
        );
        verify(mockAuthDataSource.login(testLoginParameters)).called(1);
      });

      test('should cache user data when login is successful', () async {
        // Arrange
        when(mockAuthDataSource.login(any))
            .thenAnswer((_) async => testUserModel);

        // Act
        await authRepository.login(testLoginParameters);

        // Assert
        verify(mockAuthDataSource.login(testLoginParameters)).called(1);
        verify(mockUserLocalDataSource.saveUserData(any)).called(1);
      });

      test('should return Failure when data source throws exception', () async {
        // Arrange
        final exception = Exception('Network error');
        when(mockAuthDataSource.login(any)).thenThrow(exception);

        // Act
        final result = await authRepository.login(testLoginParameters);

        // Assert
        expect(result.isLeft(), true);
        result.fold(
          (failure) => expect(failure, isA<Failure>()),
          (_) => fail('Should return failure'),
        );
        verify(mockAuthDataSource.login(testLoginParameters)).called(1);
      });

      test('should return ServerFailure when server error occurs', () async {
        // Arrange
        final serverException = Exception('Server error');
        when(mockAuthDataSource.login(any)).thenThrow(serverException);

        // Act
        final result = await authRepository.login(testLoginParameters);

        // Assert
        expect(result.isLeft(), true);
        result.fold(
          (failure) => expect(failure, isA<Failure>()),
          (_) => fail('Should return failure'),
        );
        verify(mockAuthDataSource.login(testLoginParameters)).called(1);
      });

      test('should handle null access token gracefully', () async {
        // Arrange
        final userModelWithoutToken = UserModel(
          accessToken: null,
          accountId: 'test-account-id',
          account: const [
            Account(
              id: 'account-1',
              email: 'test@example.com',
              fullname: 'Test User',
              username: 'testuser',
              points: '100',
              redeemedPoints: '50',
            ),
          ],
        );
        when(mockAuthDataSource.login(any))
            .thenAnswer((_) async => userModelWithoutToken);

        // Act 
        final result = await authRepository.login(testLoginParameters);

        // Assert - Should return a Failure due to null access token
        expect(result.isLeft(), true);
        result.fold(
          (failure) => expect(failure, isA<Failure>()),
          (_) => fail('Should return failure'),
        );
      });
    });

    group('register', () {
      test('should return UserEntity when data source call is successful', () async {
        // Arrange
        when(mockAuthDataSource.register(any))
            .thenAnswer((_) async => testUserModel);

        // Act
        final result = await authRepository.register(testRegisterParameters);

        // Assert
        expect(result.isRight(), true);
        result.fold(
          (failure) => fail('Should return success'),
          (user) {
            expect(user.accessToken, 'test-access-token');
            expect(user.accountId, 'test-account-id');
            expect(user.email, 'test@example.com');
            expect(user.fullName, 'Test User');
            expect(user.userName, 'testuser');
          },
        );
        verify(mockAuthDataSource.register(testRegisterParameters)).called(1);
        verify(mockUserLocalDataSource.saveUserData(any)).called(1);
      });

      test('should return Failure when data source throws exception', () async {
        // Arrange
        final exception = Exception('Registration failed');
        when(mockAuthDataSource.register(any)).thenThrow(exception);

        // Act
        final result = await authRepository.register(testRegisterParameters);

        // Assert
        expect(result.isLeft(), true);
        result.fold(
          (failure) => expect(failure, isA<Failure>()),
          (_) => fail('Should return failure'),
        );
        verify(mockAuthDataSource.register(testRegisterParameters)).called(1);
      });

      test('should pass correct parameters to data source', () async {
        // Arrange
        const customRegisterParams = RegisterParameters(
          userName: 'customuser',
          password: 'custompassword',
          email: 'custom@example.com',
          fullName: 'Custom User',
          groupEmail: 'customgroup@example.com',
        );
        when(mockAuthDataSource.register(any))
            .thenAnswer((_) async => testUserModel);

        // Act
        await authRepository.register(customRegisterParams);

        // Assert
        verify(mockAuthDataSource.register(customRegisterParams)).called(1);
      });
    });

    group('checkEmail', () {
      test('should return CheckEmailEntity when data source call is successful', () async {
        // Arrange
        const testCheckEmailModel = CheckEmailModel(
          error: false,
          verifyCode: 'ABC123',
          errorMessage: null,
        );
        when(mockAuthDataSource.checkEmail(any))
            .thenAnswer((_) async => testCheckEmailModel);

        // Act
        final result = await authRepository.checkEmail(testCheckEmailParameters);

        // Assert
        expect(result.isRight(), true);
        result.fold(
          (failure) => fail('Should return success'),
          (checkEmail) {
            expect(checkEmail.verifyCode, 'ABC123');
          },
        );
        verify(mockAuthDataSource.checkEmail(testCheckEmailParameters)).called(1);
      });

      test('should return Failure when data source throws exception', () async {
        // Arrange
        final exception = Exception('Check email failed');
        when(mockAuthDataSource.checkEmail(any)).thenThrow(exception);

        // Act
        final result = await authRepository.checkEmail(testCheckEmailParameters);

        // Assert
        expect(result.isLeft(), true);
        result.fold(
          (failure) => expect(failure, isA<Failure>()),
          (_) => fail('Should return failure'),
        );
        verify(mockAuthDataSource.checkEmail(testCheckEmailParameters)).called(1);
      });

      test('should pass correct parameters to data source', () async {
        // Arrange
        const customCheckEmailParams = CheckEmailParameters(
          email: 'custom@example.com',
        );
        const testCheckEmailModel = CheckEmailModel(
          error: true,
          verifyCode: null,
          errorMessage: 'Email is already taken',
        );
        when(mockAuthDataSource.checkEmail(any))
            .thenAnswer((_) async => testCheckEmailModel);

        // Act
        final result = await authRepository.checkEmail(customCheckEmailParams);

        // Assert
        expect(result.isRight(), true);
        result.fold(
          (failure) => fail('Should return success'),
          (checkEmail) {
            expect(checkEmail.verifyCode, null);
          },
        );
        verify(mockAuthDataSource.checkEmail(customCheckEmailParams)).called(1);
      });
    });

    group('Error Handling', () {
      test('should handle various exception types in login', () async {
        // Arrange
        final networkException = Exception('Network timeout');
        when(mockAuthDataSource.login(any)).thenThrow(networkException);

        // Act
        final result = await authRepository.login(testLoginParameters);

        // Assert
        expect(result.isLeft(), true);
        verify(mockAuthDataSource.login(testLoginParameters)).called(1);
      });

      test('should handle parsing exceptions', () async {
        // Arrange
        final parsingException = FormatException('Invalid JSON');
        when(mockAuthDataSource.login(any)).thenThrow(parsingException);

        // Act
        final result = await authRepository.login(testLoginParameters);

        // Assert
        expect(result.isLeft(), true);
        verify(mockAuthDataSource.login(testLoginParameters)).called(1);
      });

      test('should handle null pointer exceptions gracefully', () async {
        // Arrange
        when(mockAuthDataSource.login(any)).thenThrow(TypeError());

        // Act
        final result = await authRepository.login(testLoginParameters);

        // Assert
        expect(result.isLeft(), true);
        verify(mockAuthDataSource.login(testLoginParameters)).called(1);
      });
    });
  });
}