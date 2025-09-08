import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:magic_rewards/features/home/data/models/home_model.dart';

void main() {
  group('HomeModel', () {
    const testJsonMap = {
      'error': false,
      'error_code': null,
      'balance': '250',
      'offerwalls': [
        {
          'offer_id': 'offer-1',
          'offer_title': 'Complete Survey',
          'offer_subtitle': 'Earn points by completing this survey',
          'offer_url': 'https://example.com/survey',
          'offer_type': 'survey',
          'offer_points': '100',
          'offer_featured': true,
          'offer_thumbnail': 'https://example.com/thumb.jpg',
          'offer_position': '1',
          'offer_status': 'active',
        },
      ],
    };

    const testHomeModel = HomeModel(
      error: false,
      errorCode: null,
      balance: '250',
      offerWalls: [
        OfferWallModel(
          id: 'offer-1',
          title: 'Complete Survey',
          subtitle: 'Earn points by completing this survey',
          url: 'https://example.com/survey',
          type: 'survey',
          points: '100',
          featured: true,
          thumbnail: 'https://example.com/thumb.jpg',
          position: '1',
          status: 'active',
        ),
      ],
    );

    group('fromJson', () {
      test('should return a valid HomeModel from JSON', () {
        // Act
        final result = HomeModel.fromJson(testJsonMap);

        // Assert
        expect(result, isA<HomeModel>());
        expect(result.error, false);
        expect(result.errorCode, null);
        expect(result.balance, '250');
        expect(result.offerWalls, isNotNull);
        expect(result.offerWalls!.length, 1);
        expect(result.offerWalls![0].id, 'offer-1');
        expect(result.offerWalls![0].title, 'Complete Survey');
        expect(result.offerWalls![0].type, 'survey');
        expect(result.offerWalls![0].points, '100');
      });

      test('should handle missing optional fields', () {
        // Arrange
        final minimalJson = {
          'balance': '150',
          'offerwalls': [
            {
              'offer_id': 'offer-2',
              'offer_title': 'Watch Video',
              'offer_url': 'https://example.com/video',
              'offer_type': 'video',
            },
          ],
        };

        // Act
        final result = HomeModel.fromJson(minimalJson);

        // Assert
        expect(result.balance, '150');
        expect(result.error, null);
        expect(result.errorCode, null);
        expect(result.offerWalls![0].id, 'offer-2');
        expect(result.offerWalls![0].title, 'Watch Video');
        expect(result.offerWalls![0].subtitle, null);
        expect(result.offerWalls![0].points, null);
        expect(result.offerWalls![0].featured, null);
      });

      test('should handle error response', () {
        // Arrange
        final errorJson = {
          'error': true,
          'error_code': 404,
          'balance': null,
          'offerwalls': null,
        };

        // Act
        final result = HomeModel.fromJson(errorJson);

        // Assert
        expect(result.error, true);
        expect(result.errorCode, 404);
        expect(result.balance, null);
        expect(result.offerWalls, null);
      });

      test('should handle empty offerwalls array', () {
        // Arrange
        final emptyOfferwallsJson = {
          'error': false,
          'balance': '0',
          'offerwalls': [],
        };

        // Act
        final result = HomeModel.fromJson(emptyOfferwallsJson);

        // Assert
        expect(result.balance, '0');
        expect(result.offerWalls, isNotNull);
        expect(result.offerWalls, isEmpty);
      });
    });

    group('toJson', () {
      test('should return a JSON map containing proper data', () {
        // Act
        final jsonMap = testHomeModel.toJson();

        // Assert
        expect(jsonMap, isA<Map<String, dynamic>>());
        expect(jsonMap['error'], false);
        expect(jsonMap['error_code'], null);
        expect(jsonMap['balance'], '250');
        expect(jsonMap['offerwalls'], isA<List>());
        final offerWallsList = jsonMap['offerwalls'] as List;
        expect(offerWallsList.length, 1);
        expect(offerWallsList.first, isNotNull);
      });

      test('should serialize and deserialize correctly', () {
        // Act
        final jsonString = json.encode(testHomeModel.toJson());
        final decodedJson = json.decode(jsonString) as Map<String, dynamic>;
        final reconstructedModel = HomeModel.fromJson(decodedJson);

        // Assert
        expect(reconstructedModel.balance, testHomeModel.balance);
        expect(reconstructedModel.error, testHomeModel.error);
        expect(reconstructedModel.offerWalls!.length, testHomeModel.offerWalls!.length);
        expect(reconstructedModel.offerWalls![0].id, testHomeModel.offerWalls![0].id);
        expect(reconstructedModel.offerWalls![0].title, testHomeModel.offerWalls![0].title);
      });
    });

    group('toEntity', () {
      test('should return a HomeEntity with correct properties', () {
        // Act
        final entity = testHomeModel.toEntity();

        // Assert
        expect(entity.balance, '250');
        expect(entity.offerWalls, hasLength(1));
        expect(entity.offerWalls[0].id, 'offer-1');
        expect(entity.offerWalls[0].title, 'Complete Survey');
        expect(entity.offerWalls[0].type, 'survey');
      });

      test('should handle null balance with default value', () {
        // Arrange
        const homeModelWithNullBalance = HomeModel(
          balance: null,
          offerWalls: [
            OfferWallModel(
              id: 'offer-1',
              title: 'Test Offer',
              url: 'https://example.com',
              type: 'survey',
            ),
          ],
        );

        // Act
        final entity = homeModelWithNullBalance.toEntity();

        // Assert
        expect(entity.balance, '0'); // Should default to '0'
      });

      test('should handle null offerWalls with empty list', () {
        // Arrange
        const homeModelWithNullOfferWalls = HomeModel(
          balance: '100',
          offerWalls: null,
        );

        // Act
        final entity = homeModelWithNullOfferWalls.toEntity();

        // Assert
        expect(entity.offerWalls, isEmpty); // Should default to empty list
      });

      test('should handle empty offerWalls list', () {
        // Arrange
        const homeModelWithEmptyOfferWalls = HomeModel(
          balance: '50',
          offerWalls: [],
        );

        // Act
        final entity = homeModelWithEmptyOfferWalls.toEntity();

        // Assert
        expect(entity.offerWalls, isEmpty);
        expect(entity.balance, '50');
      });
    });
  });

  group('OfferWallModel', () {
    const testOfferWallJson = {
      'offer_id': 'offer-123',
      'offer_title': 'Survey Task',
      'offer_subtitle': 'Complete this survey for points',
      'offer_url': 'https://example.com/survey/123',
      'offer_type': 'survey',
      'offer_points': '75',
      'offer_featured': false,
      'offer_thumbnail': 'https://example.com/thumbnail.jpg',
      'offer_position': '2',
      'offer_status': 'active',
    };

    test('should create OfferWallModel from JSON', () {
      // Act
      final offerWall = OfferWallModel.fromJson(testOfferWallJson);

      // Assert
      expect(offerWall.id, 'offer-123');
      expect(offerWall.title, 'Survey Task');
      expect(offerWall.subtitle, 'Complete this survey for points');
      expect(offerWall.url, 'https://example.com/survey/123');
      expect(offerWall.type, 'survey');
      expect(offerWall.points, '75');
      expect(offerWall.featured, false);
      expect(offerWall.thumbnail, 'https://example.com/thumbnail.jpg');
      expect(offerWall.position, '2');
      expect(offerWall.status, 'active');
    });

    test('should convert OfferWallModel to JSON', () {
      // Arrange
      const offerWall = OfferWallModel(
        id: 'offer-456',
        title: 'Video Task',
        subtitle: 'Watch video to earn',
        url: 'https://example.com/video/456',
        type: 'video',
        points: '50',
        featured: true,
        thumbnail: 'https://example.com/video_thumb.jpg',
        position: '1',
        status: 'active',
      );

      // Act
      final jsonMap = offerWall.toJson();

      // Assert
      expect(jsonMap['offer_id'], 'offer-456');
      expect(jsonMap['offer_title'], 'Video Task');
      expect(jsonMap['offer_subtitle'], 'Watch video to earn');
      expect(jsonMap['offer_url'], 'https://example.com/video/456');
      expect(jsonMap['offer_type'], 'video');
      expect(jsonMap['offer_points'], '50');
      expect(jsonMap['offer_featured'], true);
      expect(jsonMap['offer_thumbnail'], 'https://example.com/video_thumb.jpg');
      expect(jsonMap['offer_position'], '1');
      expect(jsonMap['offer_status'], 'active');
    });

    test('should handle missing optional fields in OfferWallModel', () {
      // Arrange
      final minimalOfferWallJson = {
        'offer_id': 'offer-minimal',
        'offer_title': 'Minimal Offer',
        'offer_url': 'https://example.com/minimal',
        'offer_type': 'task',
      };

      // Act
      final offerWall = OfferWallModel.fromJson(minimalOfferWallJson);

      // Assert
      expect(offerWall.id, 'offer-minimal');
      expect(offerWall.title, 'Minimal Offer');
      expect(offerWall.url, 'https://example.com/minimal');
      expect(offerWall.type, 'task');
      expect(offerWall.subtitle, null);
      expect(offerWall.points, null);
      expect(offerWall.featured, null);
      expect(offerWall.thumbnail, null);
      expect(offerWall.position, null);
      expect(offerWall.status, null);
    });

    test('should convert to OfferWallEntity correctly', () {
      // Arrange
      const offerWallModel = OfferWallModel(
        id: 'offer-entity-test',
        title: 'Entity Test',
        subtitle: 'Testing entity conversion',
        url: 'https://example.com/entity',
        type: 'test',
        points: '200',
        featured: true,
        thumbnail: 'https://example.com/entity_thumb.jpg',
        position: '3',
        status: 'inactive',
      );

      // Act
      final entity = offerWallModel.toEntity();

      // Assert
      expect(entity.id, 'offer-entity-test');
      expect(entity.title, 'Entity Test');
      expect(entity.subtitle, 'Testing entity conversion');
      expect(entity.url, 'https://example.com/entity');
      expect(entity.type, 'test');
      expect(entity.thumbnail, 'https://example.com/entity_thumb.jpg');
      expect(entity.position, '3');
      expect(entity.status, 'inactive');
    });

    test('should handle null values in toEntity conversion', () {
      // Arrange
      const offerWallModelWithNulls = OfferWallModel(
        id: 'offer-nulls',
        title: null,
        subtitle: null,
        url: null,
        type: null,
        thumbnail: null,
        position: null,
        status: null,
      );

      // Act
      final entity = offerWallModelWithNulls.toEntity();

      // Assert
      expect(entity.id, 'offer-nulls');
      expect(entity.title, ''); // Should default to empty string
      expect(entity.url, ''); // Should default to empty string
      expect(entity.type, ''); // Should default to empty string
      expect(entity.subtitle, null);
      expect(entity.thumbnail, null);
      expect(entity.position, null);
      expect(entity.status, null);
    });

    test('should throw when id is null in toEntity', () {
      // Arrange
      const offerWallModelWithNullId = OfferWallModel(
        id: null,
        title: 'Test',
        url: 'https://example.com',
        type: 'test',
      );

      // Act & Assert
      expect(() => offerWallModelWithNullId.toEntity(), throwsA(isA<TypeError>()));
    });
  });
}
