import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/features/home/domain/entities/home_entity.dart';
import 'package:magic_rewards/features/home/domain/entities/home_with_user_entity.dart';
import 'package:magic_rewards/features/home/domain/usecases/get_home_usecase.dart';
import 'package:magic_rewards/features/home/presentation/blocs/home_bloc/home_bloc.dart';
import 'package:magic_rewards/features/home/presentation/blocs/home_bloc/home_state.dart';
import 'package:magic_rewards/features/auth/data/datasources/local/user_local_data_source.dart';
import 'package:magic_rewards/features/auth/domain/entities/user_entity.dart';

import 'home_bloc_test.mocks.dart';
import '../../../../../../helpers/test_helper.dart';

// Generate mocks for dependencies
@GenerateMocks([GetHomeUseCase, UserLocalDataSource])
void main() {
  late HomeBloc homeBloc;
  late MockGetHomeUseCase mockGetHomeUseCase;
  late MockUserLocalDataSource mockUserLocalDataSource;

  setUpAll(() async {
    // Initialize localization for tests
    await TestHelper.setupLocalization();
  });

  setUp(() {
    mockGetHomeUseCase = MockGetHomeUseCase();
    mockUserLocalDataSource = MockUserLocalDataSource();
  });

  tearDown(() {
    homeBloc.close();
  });

  group('HomeBloc', () {
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

    const testUserEntity = UserEntity(
      accessToken: 'test-token',
      accountId: 'user-123',
      userName: 'testuser',
      email: 'test@example.com',
      fullName: 'Test User',
      points: '100',
      redeemedPoints: '50',
    );

    const testHomeWithUserEntity = HomeWithUserEntity(
      homeData: testHomeEntity,
      userData: testUserEntity,
    );

    test('initial state should be HomeState with initial status', () {
      // Arrange & Act
      homeBloc = HomeBloc(mockGetHomeUseCase, mockUserLocalDataSource);

      // Assert
      expect(homeBloc.state, const HomeState.initial());
      expect(homeBloc.state.isInitial, true);
      expect(homeBloc.state.data, null);
    });

    group('FetchHomeEvent', () {
      blocTest<HomeBloc, HomeState>(
        'should emit [loading, success] when home fetch is successful',
        build: () {
          when(mockGetHomeUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async => const Right(testHomeEntity));
          when(mockUserLocalDataSource.getUserData())
              .thenAnswer((_) async => testUserEntity);
          return HomeBloc(mockGetHomeUseCase, mockUserLocalDataSource);
        },
        act: (bloc) => bloc.add(const FetchHomeEvent()),
        expect: () => [
          const HomeState.loading(),
          const HomeState.success(testHomeWithUserEntity),
        ],
        verify: (_) {
          verify(mockGetHomeUseCase.call(params: anyNamed('params'))).called(1);
          verify(mockUserLocalDataSource.getUserData()).called(1);
        },
      );

      blocTest<HomeBloc, HomeState>(
        'should emit [loading, error] when home fetch fails with server error',
        build: () {
          const failure = ServerFailure('Server error', statusCode: 500);
          when(mockGetHomeUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async => const Left(failure));
          when(mockUserLocalDataSource.getUserData())
              .thenAnswer((_) async => testUserEntity);
          return HomeBloc(mockGetHomeUseCase, mockUserLocalDataSource);
        },
        act: (bloc) => bloc.add(const FetchHomeEvent()),
        expect: () => [
          const HomeState.loading(),
          const HomeState.error(
            ServerFailure('Server error', statusCode: 500),
          ),
        ],
        verify: (_) {
          verify(mockGetHomeUseCase.call(params: anyNamed('params'))).called(1);
        },
      );

      blocTest<HomeBloc, HomeState>(
        'should emit [loading, error] when home fetch fails with network error',
        build: () {
          final failure = NoInternetFailure();
          when(mockGetHomeUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async => Left(failure));
          when(mockUserLocalDataSource.getUserData())
              .thenAnswer((_) async => testUserEntity);
          return HomeBloc(mockGetHomeUseCase, mockUserLocalDataSource);
        },
        act: (bloc) => bloc.add(const FetchHomeEvent()),
        expect: () => [
          const HomeState.loading(),
          HomeState.error(NoInternetFailure()),
        ],
        verify: (_) {
          verify(mockGetHomeUseCase.call(params: anyNamed('params'))).called(1);
        },
      );

      blocTest<HomeBloc, HomeState>(
        'should emit [loading, error] when home fetch fails with session expired',
        build: () {
          final failure = SessionExpiredFailure();
          when(mockGetHomeUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async => Left(failure));
          when(mockUserLocalDataSource.getUserData())
              .thenAnswer((_) async => testUserEntity);
          return HomeBloc(mockGetHomeUseCase, mockUserLocalDataSource);
        },
        act: (bloc) => bloc.add(const FetchHomeEvent()),
        expect: () => [
          const HomeState.loading(),
          HomeState.error(SessionExpiredFailure()),
        ],
        verify: (_) {
          verify(mockGetHomeUseCase.call(params: anyNamed('params'))).called(1);
        },
      );

      blocTest<HomeBloc, HomeState>(
        'should emit [loading, error] when home fetch fails with unknown error',
        build: () {
          final failure = UnknownFailure();
          when(mockGetHomeUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async => Left(failure));
          when(mockUserLocalDataSource.getUserData())
              .thenAnswer((_) async => testUserEntity);
          return HomeBloc(mockGetHomeUseCase, mockUserLocalDataSource);
        },
        act: (bloc) => bloc.add(const FetchHomeEvent()),
        expect: () => [
          const HomeState.loading(),
          HomeState.error(UnknownFailure()),
        ],
        verify: (_) {
          verify(mockGetHomeUseCase.call(params: anyNamed('params'))).called(1);
        },
      );

      blocTest<HomeBloc, HomeState>(
        'should use correct HomeParameters when calling use case',
        build: () {
          when(mockGetHomeUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async => const Right(testHomeEntity));
          when(mockUserLocalDataSource.getUserData())
              .thenAnswer((_) async => testUserEntity);
          return HomeBloc(mockGetHomeUseCase, mockUserLocalDataSource);
        },
        act: (bloc) => bloc.add(const FetchHomeEvent()),
        verify: (_) {
          verify(mockGetHomeUseCase.call(params: anyNamed('params'))).called(1);
          verify(mockUserLocalDataSource.getUserData()).called(1);
        },
      );

      blocTest<HomeBloc, HomeState>(
        'should handle empty offerWalls in response',
        build: () {
          const emptyHomeEntity = HomeEntity(balance: '0', offerWalls: []);
          when(mockGetHomeUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async => const Right(emptyHomeEntity));
          when(mockUserLocalDataSource.getUserData())
              .thenAnswer((_) async => testUserEntity);
          return HomeBloc(mockGetHomeUseCase, mockUserLocalDataSource);
        },
        act: (bloc) => bloc.add(const FetchHomeEvent()),
        expect: () => [
          const HomeState.loading(),
          const HomeState.success(HomeWithUserEntity(
            homeData: HomeEntity(balance: '0', offerWalls: []),
            userData: testUserEntity,
          )),
        ],
        verify: (_) {
          verify(mockGetHomeUseCase.call(params: anyNamed('params'))).called(1);
          verify(mockUserLocalDataSource.getUserData()).called(1);
        },
      );

      blocTest<HomeBloc, HomeState>(
        'should handle multiple offerWalls in response',
        build: () {
          const multipleOffersHomeEntity = HomeEntity(
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
          when(mockGetHomeUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async => const Right(multipleOffersHomeEntity));
          when(mockUserLocalDataSource.getUserData())
              .thenAnswer((_) async => testUserEntity);
          return HomeBloc(mockGetHomeUseCase, mockUserLocalDataSource);
        },
        act: (bloc) => bloc.add(const FetchHomeEvent()),
        expect: () => [
          const HomeState.loading(),
          const HomeState.success(HomeWithUserEntity(
            homeData: HomeEntity(
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
            ),
            userData: testUserEntity,
          )),
        ],
        verify: (_) {
          verify(mockGetHomeUseCase.call(params: anyNamed('params'))).called(1);
          verify(mockUserLocalDataSource.getUserData()).called(1);
        },
      );

      blocTest<HomeBloc, HomeState>(
        'should handle multiple consecutive fetch events',
        build: () {
          when(mockGetHomeUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async => const Right(testHomeEntity));
          when(mockUserLocalDataSource.getUserData())
              .thenAnswer((_) async => testUserEntity);
          return HomeBloc(mockGetHomeUseCase, mockUserLocalDataSource);
        },
        act: (bloc) {
          bloc.add(const FetchHomeEvent());
          bloc.add(const FetchHomeEvent());
        },
        expect: () => [
          const HomeState.loading(),
          const HomeState.success(testHomeWithUserEntity),
          const HomeState.loading(),
          const HomeState.success(testHomeWithUserEntity),
        ],
        verify: (_) {
          verify(mockGetHomeUseCase.call(params: anyNamed('params'))).called(2);
          verify(mockUserLocalDataSource.getUserData()).called(2);
        },
      );

      blocTest<HomeBloc, HomeState>(
        'should handle failure after success',
        build: () {
          var callCount = 0;
          when(mockGetHomeUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async {
            callCount++;
            if (callCount == 1) {
              return const Right(testHomeEntity);
            } else {
              return Left(NoInternetFailure());
            }
          });
          when(mockUserLocalDataSource.getUserData())
              .thenAnswer((_) async => testUserEntity);
          return HomeBloc(mockGetHomeUseCase, mockUserLocalDataSource);
        },
        act: (bloc) {
          bloc.add(const FetchHomeEvent());
          bloc.add(const FetchHomeEvent());
        },
        expect: () => [
          const HomeState.loading(),
          const HomeState.success(testHomeWithUserEntity),
          const HomeState.loading(),
          HomeState.error(NoInternetFailure()),
        ],
        verify: (_) {
          verify(mockGetHomeUseCase.call(params: anyNamed('params'))).called(2);
          verify(mockUserLocalDataSource.getUserData()).called(1);
        },
      );
    });

    group('State Properties', () {
      test('should have correct properties for loading state', () {
        homeBloc = HomeBloc(mockGetHomeUseCase, mockUserLocalDataSource);
        const loadingState = HomeState.loading();
        
        expect(loadingState.isLoading, true);
        expect(loadingState.isSuccess, false);
        expect(loadingState.isError, false);
        expect(loadingState.isInitial, false);
      });

      test('should have correct properties for success state', () {
        homeBloc = HomeBloc(mockGetHomeUseCase, mockUserLocalDataSource);
        const successState = HomeState.success(testHomeWithUserEntity);
        
        expect(successState.isLoading, false);
        expect(successState.isSuccess, true);
        expect(successState.isError, false);
        expect(successState.isInitial, false);
        expect(successState.data, testHomeWithUserEntity);
      });

      test('should have correct properties for error state', () {
        homeBloc = HomeBloc(mockGetHomeUseCase, mockUserLocalDataSource);
        const failure = ServerFailure('Test error', statusCode: 400);
        const errorState = HomeState.error(failure);
        
        expect(errorState.isLoading, false);
        expect(errorState.isSuccess, false);
        expect(errorState.isError, true);
        expect(errorState.isInitial, false);
        expect(errorState.failure, failure);
        expect(errorState.errorMessage, 'Test error');
      });

      blocTest<HomeBloc, HomeState>(
        'should emit [loading, error] when user data is null',
        build: () {
          when(mockGetHomeUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async => const Right(testHomeEntity));
          when(mockUserLocalDataSource.getUserData())
              .thenAnswer((_) async => null);
          return HomeBloc(mockGetHomeUseCase, mockUserLocalDataSource);
        },
        act: (bloc) => bloc.add(const FetchHomeEvent()),
        expect: () => [
          const HomeState.loading(),
          const HomeState.error(Failure('User data not found')),
        ],
        verify: (_) {
          verify(mockGetHomeUseCase.call(params: anyNamed('params'))).called(1);
          verify(mockUserLocalDataSource.getUserData()).called(1);
        },
      );

      test('should handle user data not found error', () {
        const userNotFoundFailure = Failure('User data not found');
        const errorState = HomeState.error(userNotFoundFailure);
        
        expect(errorState.isError, true);
        expect(errorState.failure, userNotFoundFailure);
        expect(errorState.errorMessage, 'User data not found');
      });

      test('should have correct convenience getters for combined data', () {
        const successState = HomeState.success(testHomeWithUserEntity);
        
        expect(successState.balance, '150');
        expect(successState.username, 'testuser');
        expect(successState.fullName, 'Test User');
        expect(successState.email, 'test@example.com');
        expect(successState.points, '100');
        expect(successState.redeemedPoints, '50');
        expect(successState.accountId, 'user-123');
        expect(successState.accessToken, 'test-token');
        expect(successState.offerWalls, [testOfferWallEntity]);
      });
    });
  });
}
