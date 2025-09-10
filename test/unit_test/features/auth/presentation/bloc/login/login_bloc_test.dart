import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/core/presentation/bloc/base/base_state.dart';
import 'package:magic_rewards/features/auth/domain/entities/user_entity.dart';
import 'package:magic_rewards/features/auth/domain/parameters/login_parameters.dart';
import 'package:magic_rewards/features/auth/domain/usecases/login_usecase.dart';
import 'package:magic_rewards/features/auth/presentation/blocs/login/login_bloc.dart';

import 'login_bloc_test.mocks.dart';
import '../../../../../../helpers/test_helper.dart';

// Generate mocks for dependencies
@GenerateMocks([LoginUseCase])
void main() {
  late LoginBloc loginBloc;
  late MockLoginUseCase mockLoginUseCase;

  setUpAll(() async {
    // Initialize localization for tests
    await TestHelper.setupLocalization();
  });

  setUp(() {
    mockLoginUseCase = MockLoginUseCase();
  });

  tearDown(() {
    loginBloc.close();
  });

  group('LoginBloc', () {
    const testUser = UserEntity(
      accountId: 'test-account-id',
      email: 'test@example.com',
      fullName: 'Test User',
      points: '100',
      redeemedPoints: '50',
      userName: 'testuser',
      accessToken: 'test-token',
    );

    const testUsername = 'testuser';
    const testPassword = 'testpassword';

    test('initial state should be BaseState with init status', () {
      // Arrange & Act
      loginBloc = LoginBloc(mockLoginUseCase);

      // Assert
      expect(loginBloc.state, const BaseState<UserEntity>.initial());
      expect(loginBloc.state.isInit, true);
      expect(loginBloc.state.data, null);
    });

    group('LoginButtonTappedEvent', () {
      blocTest<LoginBloc, BaseState<UserEntity>>(
        'should emit [loading, success] when login is successful',
        build: () {
          when(mockLoginUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async => const Right(testUser));
          return LoginBloc(mockLoginUseCase);
        },
        act: (bloc) => bloc.add(const LoginButtonTappedEvent(
          username: testUsername,
          password: testPassword,
        )),
        expect: () => [
          const BaseState<UserEntity>.loading(),
          const BaseState<UserEntity>.success(testUser),
        ],
        verify: (_) {
          final capturedParams = verify(
            mockLoginUseCase.call(params: captureAnyNamed('params'))
          ).captured.first as LoginParameters;
          
          expect(capturedParams.username, testUsername);
          expect(capturedParams.password, testPassword);
        },
      );

      blocTest<LoginBloc, BaseState<UserEntity>>(
        'should emit [loading, error] when login fails with server error',
        build: () {
          const failure = ServerFailure('Login failed', statusCode: 401);
          when(mockLoginUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async => const Left(failure));
          return LoginBloc(mockLoginUseCase);
        },
        act: (bloc) => bloc.add(const LoginButtonTappedEvent(
          username: testUsername,
          password: testPassword,
        )),
        expect: () => [
          const BaseState<UserEntity>.loading(),
          const BaseState<UserEntity>.error(
            ServerFailure('Login failed', statusCode: 401),
          ),
        ],
        verify: (_) {
          verify(mockLoginUseCase.call(params: anyNamed('params'))).called(1);
        },
      );

      blocTest<LoginBloc, BaseState<UserEntity>>(
        'should emit [loading, error] when login fails with network error',
        build: () {
          final failure = NoInternetFailure();
          when(mockLoginUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async => Left(failure));
          return LoginBloc(mockLoginUseCase);
        },
        act: (bloc) => bloc.add(const LoginButtonTappedEvent(
          username: testUsername,
          password: testPassword,
        )),
        expect: () => [
          const BaseState<UserEntity>.loading(),
          BaseState<UserEntity>.error(NoInternetFailure()),
        ],
        verify: (_) {
          verify(mockLoginUseCase.call(params: anyNamed('params'))).called(1);
        },
      );

      blocTest<LoginBloc, BaseState<UserEntity>>(
        'should emit [loading, error] when login fails with invalid credentials',
        build: () {
          const failure = Failure('Invalid credentials');
          when(mockLoginUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async => const Left(failure));
          return LoginBloc(mockLoginUseCase);
        },
        act: (bloc) => bloc.add(const LoginButtonTappedEvent(
          username: 'wronguser',
          password: 'wrongpassword',
        )),
        expect: () => [
          const BaseState<UserEntity>.loading(),
          const BaseState<UserEntity>.error(Failure('Invalid credentials')),
        ],
        verify: (_) {
          verify(mockLoginUseCase.call(params: anyNamed('params'))).called(1);
        },
      );

      blocTest<LoginBloc, BaseState<UserEntity>>(
        'should emit [loading, error] when login fails with session expired',
        build: () {
          final failure = SessionExpiredFailure();
          when(mockLoginUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async => Left(failure));
          return LoginBloc(mockLoginUseCase);
        },
        act: (bloc) => bloc.add(const LoginButtonTappedEvent(
          username: testUsername,
          password: testPassword,
        )),
        expect: () => [
          const BaseState<UserEntity>.loading(),
          BaseState<UserEntity>.error(SessionExpiredFailure()),
        ],
        verify: (_) {
          verify(mockLoginUseCase.call(params: anyNamed('params'))).called(1);
        },
      );

      blocTest<LoginBloc, BaseState<UserEntity>>(
        'should use correct LoginParameters when calling use case',
        build: () {
          when(mockLoginUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async => const Right(testUser));
          return LoginBloc(mockLoginUseCase);
        },
        act: (bloc) => bloc.add(const LoginButtonTappedEvent(
          username: 'customuser',
          password: 'custompassword',
        )),
        verify: (_) {
          final capturedParams = verify(
            mockLoginUseCase.call(params: captureAnyNamed('params'))
          ).captured.first as LoginParameters;
          
          expect(capturedParams.username, 'customuser');
          expect(capturedParams.password, 'custompassword');
        },
      );

      blocTest<LoginBloc, BaseState<UserEntity>>(
        'should handle empty username and password',
        build: () {
          const failure = Failure('Invalid credentials');
          when(mockLoginUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async => const Left(failure));
          return LoginBloc(mockLoginUseCase);
        },
        act: (bloc) => bloc.add(const LoginButtonTappedEvent(
          username: '',
          password: '',
        )),
        expect: () => [
          const BaseState<UserEntity>.loading(),
          const BaseState<UserEntity>.error(Failure('Invalid credentials')),
        ],
        verify: (_) {
          verify(mockLoginUseCase.call(params: anyNamed('params'))).called(1);
        },
      );

      blocTest<LoginBloc, BaseState<UserEntity>>(
        'should handle multiple consecutive login attempts',
        build: () {
          when(mockLoginUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async => const Right(testUser));
          return LoginBloc(mockLoginUseCase);
        },
        act: (bloc) {
          bloc.add(const LoginButtonTappedEvent(
            username: testUsername,
            password: testPassword,
          ));
          bloc.add(const LoginButtonTappedEvent(
            username: testUsername,
            password: testPassword,
          ));
        },
        expect: () => [
          const BaseState<UserEntity>.loading(),
          const BaseState<UserEntity>.success(testUser),
          const BaseState<UserEntity>.loading(),
          const BaseState<UserEntity>.success(testUser),
        ],
        verify: (_) {
          verify(mockLoginUseCase.call(params: anyNamed('params'))).called(2);
        },
      );
    });

    group('State Properties', () {
      test('should have correct properties for loading state', () {
        loginBloc = LoginBloc(mockLoginUseCase);
        final loadingState = loginBloc.state.loading();
        
        expect(loadingState.isLoading, true);
        expect(loadingState.isSuccess, false);
        expect(loadingState.isError, false);
        expect(loadingState.isInit, false);
      });

      test('should have correct properties for success state', () {
        loginBloc = LoginBloc(mockLoginUseCase);
        final successState = loginBloc.state.success(testUser);
        
        expect(successState.isLoading, false);
        expect(successState.isSuccess, true);
        expect(successState.isError, false);
        expect(successState.isInit, false);
        expect(successState.data, testUser);
      });

      test('should have correct properties for error state', () {
        loginBloc = LoginBloc(mockLoginUseCase);
        const failure = ServerFailure('Test error', statusCode: 400);
        final errorState = loginBloc.state.error(failure);
        
        expect(errorState.isLoading, false);
        expect(errorState.isSuccess, false);
        expect(errorState.isError, true);
        expect(errorState.isInit, false);
        expect(errorState.failure, failure);
        expect(errorState.errorMessage, 'Test error');
      });
    });
  });
}