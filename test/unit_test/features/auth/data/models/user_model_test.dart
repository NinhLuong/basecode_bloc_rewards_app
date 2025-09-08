import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:magic_rewards/features/auth/data/models/user_model.dart';

void main() {
  group('UserModel', () {
    const testJsonMap = {
      'error': false,
      'error_code': null,
      'accessToken': 'test-access-token',
      'accountId': 'test-account-id',
      'account': [
        {
          'error': false,
          'error_code': null,
          'id': 'account-1',
          'last_access': '2023-01-01 12:00:00',
          'last_ip_addr': '192.168.1.1',
          'gcm': 'gcm-token',
          'state': 'active',
          'fullname': 'John Doe',
          'username': 'johndoe',
          'email': 'john@example.com',
          'regtime': '2023-01-01 10:00:00',
          'ip_addr': '192.168.1.1',
          'mobile': '+1234567890',
          'points': '150',
          'refer': 'REF001',
          'refered': 'REF002',
          'redeemed_points': '25',
          'total_points': '175',
        },
      ],
    };

    const testUserModel = UserModel(
      error: false,
      errorCode: null,
      accessToken: 'test-access-token',
      accountId: 'test-account-id',
      account: [
        Account(
          error: false,
          errorCode: null,
          id: 'account-1',
          lastAccess: '2023-01-01 12:00:00',
          lastIpAddr: '192.168.1.1',
          gcm: 'gcm-token',
          state: 'active',
          fullname: 'John Doe',
          username: 'johndoe',
          email: 'john@example.com',
          regtime: '2023-01-01 10:00:00',
          ipAddr: '192.168.1.1',
          mobile: '+1234567890',
          points: '150',
          refer: 'REF001',
          refered: 'REF002',
          redeemedPoints: '25',
          totalPoints: '175',
        ),
      ],
    );

    group('fromJson', () {
      test('should return a valid UserModel from JSON', () {
        // Act
        final result = UserModel.fromJson(testJsonMap);

        // Assert
        expect(result, isA<UserModel>());
        expect(result.error, false);
        expect(result.errorCode, null);
        expect(result.accessToken, 'test-access-token');
        expect(result.accountId, 'test-account-id');
        expect(result.account, isNotNull);
        expect(result.account!.length, 1);
        expect(result.account![0].id, 'account-1');
        expect(result.account![0].fullname, 'John Doe');
        expect(result.account![0].username, 'johndoe');
        expect(result.account![0].email, 'john@example.com');
        expect(result.account![0].points, '150');
        expect(result.account![0].redeemedPoints, '25');
      });

      test('should handle missing optional fields', () {
        // Arrange
        final minimalJson = {
          'accessToken': 'token',
          'accountId': 'account-id',
          'account': [
            {
              'fullname': 'Test User',
              'username': 'testuser',
              'email': 'test@example.com',
              'points': '100',
            },
          ],
        };

        // Act
        final result = UserModel.fromJson(minimalJson);

        // Assert
        expect(result.accessToken, 'token');
        expect(result.accountId, 'account-id');
        expect(result.error, null);
        expect(result.errorCode, null);
        expect(result.account![0].fullname, 'Test User');
        expect(result.account![0].username, 'testuser');
        expect(result.account![0].email, 'test@example.com');
        expect(result.account![0].points, '100');
        expect(result.account![0].redeemedPoints, null);
      });

      test('should handle error response', () {
        // Arrange
        final errorJson = {
          'error': true,
          'error_code': 400,
          'accessToken': null,
          'accountId': null,
          'account': null,
        };

        // Act
        final result = UserModel.fromJson(errorJson);

        // Assert
        expect(result.error, true);
        expect(result.errorCode, 400);
        expect(result.accessToken, null);
        expect(result.accountId, null);
        expect(result.account, null);
      });
    });

    group('toJson', () {
      test('should return a JSON map containing proper data', () {
        // Act
        final jsonMap = testUserModel.toJson();

        // Assert
        expect(jsonMap, isA<Map<String, dynamic>>());
        expect(jsonMap['error'], false);
        expect(jsonMap['error_code'], null);
        expect(jsonMap['accessToken'], 'test-access-token');
        expect(jsonMap['accountId'], 'test-account-id');
        expect(jsonMap['account'], isA<List>());
        final accountList = jsonMap['account'] as List;
        expect(accountList.length, 1);
        // Note: The account objects are serialized correctly by the generated toJson method
        expect(accountList.first, isNotNull);
      });

      test('should serialize and deserialize correctly', () {
        // Act
        final jsonString = json.encode(testUserModel.toJson());
        final decodedJson = json.decode(jsonString) as Map<String, dynamic>;
        final reconstructedModel = UserModel.fromJson(decodedJson);

        // Assert
        expect(reconstructedModel.accessToken, testUserModel.accessToken);
        expect(reconstructedModel.accountId, testUserModel.accountId);
        expect(reconstructedModel.error, testUserModel.error);
        expect(reconstructedModel.account![0].fullname, testUserModel.account![0].fullname);
        expect(reconstructedModel.account![0].username, testUserModel.account![0].username);
        expect(reconstructedModel.account![0].email, testUserModel.account![0].email);
      });
    });

    group('toEntity', () {
      test('should return a UserEntity with correct properties', () {
        // Act
        final entity = testUserModel.toEntity();

        // Assert
        expect(entity.accessToken, 'test-access-token');
        expect(entity.accountId, 'test-account-id');
        expect(entity.email, 'john@example.com');
        expect(entity.fullName, 'John Doe');
        expect(entity.points, '150');
        expect(entity.redeemedPoints, '25');
        expect(entity.userName, 'johndoe');
      });

      test('should handle null redeemed points with default value', () {
        // Arrange
        const userModelWithNullRedeemed = UserModel(
          accessToken: 'token',
          accountId: 'account-id',
          account: [
            Account(
              fullname: 'Test User',
              username: 'testuser',
              email: 'test@example.com',
              points: '100',
              redeemedPoints: null, // null redeemed points
            ),
          ],
        );

        // Act
        final entity = userModelWithNullRedeemed.toEntity();

        // Assert
        expect(entity.redeemedPoints, '0'); // Should default to '0'
      });

      test('should throw when required fields are null', () {
        // Arrange
        const userModelWithNulls = UserModel(
          accessToken: null, // null access token
          accountId: 'account-id',
          account: [
            Account(
              fullname: 'Test User',
              username: 'testuser',
              email: 'test@example.com',
              points: '100',
            ),
          ],
        );

        // Act & Assert
        expect(() => userModelWithNulls.toEntity(), throwsA(isA<TypeError>()));
      });

      test('should throw when account list is empty', () {
        // Arrange
        const userModelWithEmptyAccount = UserModel(
          accessToken: 'token',
          accountId: 'account-id',
          account: [], // empty account list
        );

        // Act & Assert
        expect(() => userModelWithEmptyAccount.toEntity(), throwsA(isA<RangeError>()));
      });

      test('should throw when account is null', () {
        // Arrange
        const userModelWithNullAccount = UserModel(
          accessToken: 'token',
          accountId: 'account-id',
          account: null, // null account
        );

        // Act & Assert
        expect(() => userModelWithNullAccount.toEntity(), throwsA(isA<TypeError>()));
      });
    });

    group('Account Model', () {
      const testAccountJson = {
        'error': false,
        'error_code': null,
        'id': 'account-1',
        'last_access': '2023-01-01 12:00:00',
        'fullname': 'John Doe',
        'username': 'johndoe',
        'email': 'john@example.com',
        'points': '150',
        'redeemed_points': '25',
      };

      test('should create Account from JSON', () {
        // Act
        final account = Account.fromJson(testAccountJson);

        // Assert
        expect(account.id, 'account-1');
        expect(account.fullname, 'John Doe');
        expect(account.username, 'johndoe');
        expect(account.email, 'john@example.com');
        expect(account.points, '150');
        expect(account.redeemedPoints, '25');
        expect(account.error, false);
      });

      test('should convert Account to JSON', () {
        // Arrange
        const account = Account(
          id: 'account-1',
          fullname: 'John Doe',
          username: 'johndoe',
          email: 'john@example.com',
          points: '150',
          redeemedPoints: '25',
        );

        // Act
        final jsonMap = account.toJson();

        // Assert
        expect(jsonMap['id'], 'account-1');
        expect(jsonMap['fullname'], 'John Doe');
        expect(jsonMap['username'], 'johndoe');
        expect(jsonMap['email'], 'john@example.com');
        expect(jsonMap['points'], '150');
        expect(jsonMap['redeemed_points'], '25');
      });

      test('should handle missing optional fields in Account', () {
        // Arrange
        final minimalAccountJson = {
          'fullname': 'Test User',
          'username': 'testuser',
          'email': 'test@example.com',
          'points': '100',
        };

        // Act
        final account = Account.fromJson(minimalAccountJson);

        // Assert
        expect(account.fullname, 'Test User');
        expect(account.username, 'testuser');
        expect(account.email, 'test@example.com');
        expect(account.points, '100');
        expect(account.id, null);
        expect(account.redeemedPoints, null);
        expect(account.error, null);
        expect(account.errorCode, null);
      });
    });
  });
}
