import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/core/presentation/bloc/base/base_state.dart';
import 'package:magic_rewards/features/home/domain/entities/home_entity.dart';
import 'package:magic_rewards/features/home/domain/usecases/get_home_usecase.dart';
import 'package:magic_rewards/features/home/presentation/blocs/home_bloc/home_bloc.dart';

import 'home_bloc_test.mocks.dart';
import '../../../../../../helpers/test_helper.dart';

// Generate mocks for dependencies
@GenerateMocks([GetHomeUseCase])
void main() {
  late HomeBloc homeBloc;
  late MockGetHomeUseCase mockGetHomeUseCase;

  setUpAll(() async {
    // Initialize localization for tests
    await TestHelper.setupLocalization();
  });

  setUp(() {
    mockGetHomeUseCase = MockGetHomeUseCase();
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

    test('initial state should be BaseState with init status', () {
      // Arrange & Act
      homeBloc = HomeBloc(mockGetHomeUseCase);

      // Assert
      expect(homeBloc.state, const BaseState<HomeEntity>.initial());
      expect(homeBloc.state.isInit, true);
      expect(homeBloc.state.data, null);
    });

    group('FetchHomeEvent', () {
      blocTest<HomeBloc, BaseState<HomeEntity>>(
        'should emit [loading, success] when home fetch is successful',
        build: () {
          when(mockGetHomeUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async => const Right(testHomeEntity));
          return HomeBloc(mockGetHomeUseCase);
        },
        act: (bloc) => bloc.add(const FetchHomeEvent()),
        expect: () => [
          const BaseState<HomeEntity>.loading(),
          const BaseState<HomeEntity>.success(testHomeEntity),
        ],
        verify: (_) {
          verify(mockGetHomeUseCase.call(params: anyNamed('params'))).called(1);
        },
      );

      blocTest<HomeBloc, BaseState<HomeEntity>>(
        'should emit [loading, error] when home fetch fails with server error',
        build: () {
          const failure = ServerFailure('Server error', statusCode: 500);
          when(mockGetHomeUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async => const Left(failure));
          return HomeBloc(mockGetHomeUseCase);
        },
        act: (bloc) => bloc.add(const FetchHomeEvent()),
        expect: () => [
          const BaseState<HomeEntity>.loading(),
          const BaseState<HomeEntity>.error(
            const ServerFailure('Server error', statusCode: 500),
          ),
        ],
        verify: (_) {
          verify(mockGetHomeUseCase.call(params: anyNamed('params'))).called(1);
        },
      );

      blocTest<HomeBloc, BaseState<HomeEntity>>(
        'should emit [loading, error] when home fetch fails with network error',
        build: () {
          final failure = NoInternetFailure();
          when(mockGetHomeUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async => Left(failure));
          return HomeBloc(mockGetHomeUseCase);
        },
        act: (bloc) => bloc.add(const FetchHomeEvent()),
        expect: () => [
          const BaseState<HomeEntity>.loading(),
          BaseState<HomeEntity>.error(NoInternetFailure()),
        ],
        verify: (_) {
          verify(mockGetHomeUseCase.call(params: anyNamed('params'))).called(1);
        },
      );

      blocTest<HomeBloc, BaseState<HomeEntity>>(
        'should emit [loading, error] when home fetch fails with session expired',
        build: () {
          final failure = SessionExpiredFailure();
          when(mockGetHomeUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async => Left(failure));
          return HomeBloc(mockGetHomeUseCase);
        },
        act: (bloc) => bloc.add(const FetchHomeEvent()),
        expect: () => [
          const BaseState<HomeEntity>.loading(),
          BaseState<HomeEntity>.error(SessionExpiredFailure()),
        ],
        verify: (_) {
          verify(mockGetHomeUseCase.call(params: anyNamed('params'))).called(1);
        },
      );

      blocTest<HomeBloc, BaseState<HomeEntity>>(
        'should emit [loading, error] when home fetch fails with unknown error',
        build: () {
          final failure = UnknownFailure();
          when(mockGetHomeUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async => Left(failure));
          return HomeBloc(mockGetHomeUseCase);
        },
        act: (bloc) => bloc.add(const FetchHomeEvent()),
        expect: () => [
          const BaseState<HomeEntity>.loading(),
          BaseState<HomeEntity>.error(UnknownFailure()),
        ],
        verify: (_) {
          verify(mockGetHomeUseCase.call(params: anyNamed('params'))).called(1);
        },
      );

      blocTest<HomeBloc, BaseState<HomeEntity>>(
        'should use correct HomeParameters when calling use case',
        build: () {
          when(mockGetHomeUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async => const Right(testHomeEntity));
          return HomeBloc(mockGetHomeUseCase);
        },
        act: (bloc) => bloc.add(const FetchHomeEvent()),
        verify: (_) {
          verify(mockGetHomeUseCase.call(params: anyNamed('params'))).called(1);
        },
      );

      blocTest<HomeBloc, BaseState<HomeEntity>>(
        'should handle empty offerWalls in response',
        build: () {
          when(mockGetHomeUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async => const Right(HomeEntity(balance: '0', offerWalls: [])));
          return HomeBloc(mockGetHomeUseCase);
        },
        act: (bloc) => bloc.add(const FetchHomeEvent()),
        expect: () => [
          const BaseState<HomeEntity>.loading(),
          const BaseState<HomeEntity>.success(HomeEntity(balance: '0', offerWalls: [])),
        ],
        verify: (_) {
          verify(mockGetHomeUseCase.call(params: anyNamed('params'))).called(1);
        },
      );

      blocTest<HomeBloc, BaseState<HomeEntity>>(
        'should handle multiple offerWalls in response',
        build: () {
          when(mockGetHomeUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async => const Right(HomeEntity(
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
              )));
          return HomeBloc(mockGetHomeUseCase);
        },
        act: (bloc) => bloc.add(const FetchHomeEvent()),
        expect: () => [
          const BaseState<HomeEntity>.loading(),
          const BaseState<HomeEntity>.success(HomeEntity(
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
          )),
        ],
        verify: (_) {
          verify(mockGetHomeUseCase.call(params: anyNamed('params'))).called(1);
        },
      );

      blocTest<HomeBloc, BaseState<HomeEntity>>(
        'should handle multiple consecutive fetch events',
        build: () {
          when(mockGetHomeUseCase.call(params: anyNamed('params')))
              .thenAnswer((_) async => const Right(testHomeEntity));
          return HomeBloc(mockGetHomeUseCase);
        },
        act: (bloc) {
          bloc.add(const FetchHomeEvent());
          bloc.add(const FetchHomeEvent());
        },
        expect: () => [
          const BaseState<HomeEntity>.loading(),
          const BaseState<HomeEntity>.success(testHomeEntity),
          const BaseState<HomeEntity>.loading(),
          const BaseState<HomeEntity>.success(testHomeEntity),
        ],
        verify: (_) {
          verify(mockGetHomeUseCase.call(params: anyNamed('params'))).called(2);
        },
      );

      blocTest<HomeBloc, BaseState<HomeEntity>>(
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
          return HomeBloc(mockGetHomeUseCase);
        },
        act: (bloc) {
          bloc.add(const FetchHomeEvent());
          bloc.add(const FetchHomeEvent());
        },
        expect: () => [
          const BaseState<HomeEntity>.loading(),
          const BaseState<HomeEntity>.success(testHomeEntity),
          const BaseState<HomeEntity>.loading(),
          BaseState<HomeEntity>.error(NoInternetFailure()),
        ],
        verify: (_) {
          verify(mockGetHomeUseCase.call(params: anyNamed('params'))).called(2);
        },
      );
    });

    group('State Properties', () {
      test('should have correct properties for loading state', () {
        homeBloc = HomeBloc(mockGetHomeUseCase);
        final loadingState = homeBloc.state.loading();
        
        expect(loadingState.isLoading, true);
        expect(loadingState.isSuccess, false);
        expect(loadingState.isError, false);
        expect(loadingState.isInit, false);
      });

      test('should have correct properties for success state', () {
        homeBloc = HomeBloc(mockGetHomeUseCase);
        final successState = homeBloc.state.success(testHomeEntity);
        
        expect(successState.isLoading, false);
        expect(successState.isSuccess, true);
        expect(successState.isError, false);
        expect(successState.isInit, false);
        expect(successState.data, testHomeEntity);
      });

      test('should have correct properties for error state', () {
        homeBloc = HomeBloc(mockGetHomeUseCase);
        const failure = ServerFailure('Test error', statusCode: 400);
        final errorState = homeBloc.state.error(failure);
        
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
