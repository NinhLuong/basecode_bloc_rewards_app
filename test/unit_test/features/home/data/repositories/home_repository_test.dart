import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/features/home/data/datasources/home_datasource.dart';
import 'package:magic_rewards/features/home/data/models/home_model.dart';
import 'package:magic_rewards/features/home/data/repository/home_repository_imp.dart';
import 'package:magic_rewards/features/home/domain/parameters/home_parameters.dart';

import 'home_repository_test.mocks.dart';
import '../../../../../helpers/test_helper.dart';

// Generate mocks for dependencies
@GenerateMocks([
  HomeDataSource,
])
void main() {
  late HomeRepositoryImp homeRepository;
  late MockHomeDataSource mockHomeDataSource;

  setUpAll(() async {
    // Initialize localization for tests
    await TestHelper.setupLocalization();
  });

  setUp(() {
    mockHomeDataSource = MockHomeDataSource();
    homeRepository = HomeRepositoryImp(mockHomeDataSource);
  });

  group('HomeRepository', () {
    final testOfferWallModel = OfferWallModel(
      id: 'offer-1',
      title: 'Test Offer',
      subtitle: 'Test subtitle',
      url: 'https://example.com',
      type: 'survey',
      points: '50',
      featured: false,
      thumbnail: 'https://example.com/thumb.jpg',
      position: '1',
      status: 'active',
    );

    final testHomeModel = HomeModel(
      error: false,
      errorCode: null,
      balance: '150',
      offerWalls: [testOfferWallModel],
    );

    final testHomeParameters = HomeParameters();

    group('getHome', () {
      test('should return HomeEntity when data source call is successful', () async {
        // Arrange
        when(mockHomeDataSource.getHome(any))
            .thenAnswer((_) async => testHomeModel);

        // Act
        final result = await homeRepository.getHome(testHomeParameters);

        // Assert
        expect(result.isRight(), true);
        result.fold(
          (failure) => fail('Should return success'),
          (home) {
            expect(home.balance, '150');
            expect(home.offerWalls, hasLength(1));
            expect(home.offerWalls[0].id, 'offer-1');
            expect(home.offerWalls[0].title, 'Test Offer');
            expect(home.offerWalls[0].type, 'survey');
          },
        );
        verify(mockHomeDataSource.getHome(testHomeParameters)).called(1);
      });

      test('should return Failure when data source throws exception', () async {
        // Arrange
        final exception = Exception('Network error');
        when(mockHomeDataSource.getHome(any)).thenThrow(exception);

        // Act
        final result = await homeRepository.getHome(testHomeParameters);

        // Assert
        expect(result.isLeft(), true);
        result.fold(
          (failure) => expect(failure, isA<Failure>()),
          (_) => fail('Should return failure'),
        );
        verify(mockHomeDataSource.getHome(testHomeParameters)).called(1);
      });

      test('should return ServerFailure when server error occurs', () async {
        // Arrange
        final serverException = Exception('Server error');
        when(mockHomeDataSource.getHome(any)).thenThrow(serverException);

        // Act
        final result = await homeRepository.getHome(testHomeParameters);

        // Assert
        expect(result.isLeft(), true);
        result.fold(
          (failure) => expect(failure, isA<Failure>()),
          (_) => fail('Should return failure'),
        );
        verify(mockHomeDataSource.getHome(testHomeParameters)).called(1);
      });

      test('should handle empty offerWalls list', () async {
        // Arrange
        final emptyHomeModel = HomeModel(
          error: false,
          errorCode: null,
          balance: '0',
          offerWalls: [],
        );
        when(mockHomeDataSource.getHome(any))
            .thenAnswer((_) async => emptyHomeModel);

        // Act
        final result = await homeRepository.getHome(testHomeParameters);

        // Assert
        expect(result.isRight(), true);
        result.fold(
          (failure) => fail('Should return success'),
          (home) {
            expect(home.balance, '0');
            expect(home.offerWalls, isEmpty);
          },
        );
        verify(mockHomeDataSource.getHome(testHomeParameters)).called(1);
      });

      test('should handle null offerWalls list', () async {
        // Arrange
        final nullOfferWallsModel = HomeModel(
          error: false,
          errorCode: null,
          balance: '100',
          offerWalls: null,
        );
        when(mockHomeDataSource.getHome(any))
            .thenAnswer((_) async => nullOfferWallsModel);

        // Act
        final result = await homeRepository.getHome(testHomeParameters);

        // Assert
        expect(result.isRight(), true);
        result.fold(
          (failure) => fail('Should return success'),
          (home) {
            expect(home.balance, '100');
            expect(home.offerWalls, isEmpty);
          },
        );
        verify(mockHomeDataSource.getHome(testHomeParameters)).called(1);
      });

      test('should handle null balance with default value', () async {
        // Arrange
        final nullBalanceModel = HomeModel(
          error: false,
          errorCode: null,
          balance: null,
          offerWalls: [testOfferWallModel],
        );
        when(mockHomeDataSource.getHome(any))
            .thenAnswer((_) async => nullBalanceModel);

        // Act
        final result = await homeRepository.getHome(testHomeParameters);

        // Assert
        expect(result.isRight(), true);
        result.fold(
          (failure) => fail('Should return success'),
          (home) {
            expect(home.balance, '0'); // Should default to '0'
            expect(home.offerWalls, hasLength(1));
          },
        );
        verify(mockHomeDataSource.getHome(testHomeParameters)).called(1);
      });

      test('should handle multiple offerWalls', () async {
        // Arrange
        final multipleOfferWallsModel = HomeModel(
          error: false,
          errorCode: null,
          balance: '500',
          offerWalls: [
            OfferWallModel(
              id: 'offer-1',
              title: 'Survey Offer',
              subtitle: 'Complete survey',
              url: 'https://example.com/survey',
              type: 'survey',
              points: '100',
              featured: true,
              thumbnail: 'https://example.com/survey.jpg',
              position: '1',
              status: 'active',
            ),
            OfferWallModel(
              id: 'offer-2',
              title: 'Video Offer',
              subtitle: 'Watch video',
              url: 'https://example.com/video',
              type: 'video',
              points: '25',
              featured: false,
              thumbnail: 'https://example.com/video.jpg',
              position: '2',
              status: 'active',
            ),
          ],
        );
        when(mockHomeDataSource.getHome(any))
            .thenAnswer((_) async => multipleOfferWallsModel);

        // Act
        final result = await homeRepository.getHome(testHomeParameters);

        // Assert
        expect(result.isRight(), true);
        result.fold(
          (failure) => fail('Should return success'),
          (home) {
            expect(home.balance, '500');
            expect(home.offerWalls, hasLength(2));
            expect(home.offerWalls[0].type, 'survey');
            expect(home.offerWalls[1].type, 'video');
            expect(home.offerWalls[0].id, 'offer-1');
            expect(home.offerWalls[1].id, 'offer-2');
          },
        );
        verify(mockHomeDataSource.getHome(testHomeParameters)).called(1);
      });

      test('should pass correct parameters to data source', () async {
        // Arrange
        final customParameters = HomeParameters();
        when(mockHomeDataSource.getHome(any))
            .thenAnswer((_) async => testHomeModel);

        // Act
        await homeRepository.getHome(customParameters);

        // Assert
        verify(mockHomeDataSource.getHome(customParameters)).called(1);
      });
    });

    group('Error Handling', () {
      test('should handle various exception types', () async {
        // Arrange
        final networkException = Exception('Network timeout');
        when(mockHomeDataSource.getHome(any)).thenThrow(networkException);

        // Act
        final result = await homeRepository.getHome(testHomeParameters);

        // Assert
        expect(result.isLeft(), true);
        verify(mockHomeDataSource.getHome(testHomeParameters)).called(1);
      });

      test('should handle parsing exceptions', () async {
        // Arrange
        final parsingException = FormatException('Invalid JSON');
        when(mockHomeDataSource.getHome(any)).thenThrow(parsingException);

        // Act
        final result = await homeRepository.getHome(testHomeParameters);

        // Assert
        expect(result.isLeft(), true);
        verify(mockHomeDataSource.getHome(testHomeParameters)).called(1);
      });

      test('should handle type errors gracefully', () async {
        // Arrange
        when(mockHomeDataSource.getHome(any)).thenThrow(TypeError());

        // Act
        final result = await homeRepository.getHome(testHomeParameters);

        // Assert
        expect(result.isLeft(), true);
        verify(mockHomeDataSource.getHome(testHomeParameters)).called(1);
      });
    });
  });
}
