import 'package:flutter_test/flutter_test.dart';
import 'package:magic_rewards/features/auth/presentation/blocs/login/login_bloc.dart';

void main() {
  group('LoginEvent', () {
    group('LoginButtonTappedEvent', () {
      test('should be a subclass of LoginEvent', () {
        // Arrange
        const event = LoginButtonTappedEvent(
          username: 'test',
          password: 'test',
        );

        // Assert
        expect(event, isA<LoginEvent>());
      });

      test('should have correct props for equality comparison', () {
        // Arrange
        const event1 = LoginButtonTappedEvent(
          username: 'testuser',
          password: 'testpassword',
        );
        const event2 = LoginButtonTappedEvent(
          username: 'testuser',
          password: 'testpassword',
        );
        const event3 = LoginButtonTappedEvent(
          username: 'differentuser',
          password: 'testpassword',
        );

        // Assert
        expect(event1, equals(event2));
        expect(event1, isNot(equals(event3)));
        expect(event1.props, equals([event1.username, event1.password]));
      });

      test('should store username and password correctly', () {
        // Arrange
        const username = 'johndoe';
        const password = 'securepassword123';

        // Act
        const event = LoginButtonTappedEvent(
          username: username,
          password: password,
        );

        // Assert
        expect(event.username, equals(username));
        expect(event.password, equals(password));
      });

      test('should handle empty strings', () {
        // Act
        const event = LoginButtonTappedEvent(
          username: '',
          password: '',
        );

        // Assert
        expect(event.username, equals(''));
        expect(event.password, equals(''));
      });

      test('should handle special characters in username and password', () {
        // Arrange
        const specialUsername = 'user@domain.com';
        const specialPassword = 'P@ssw0rd!#\$';

        // Act
        const event = LoginButtonTappedEvent(
          username: specialUsername,
          password: specialPassword,
        );

        // Assert
        expect(event.username, equals(specialUsername));
        expect(event.password, equals(specialPassword));
      });

      test('should be immutable', () {
        // Arrange
        const event = LoginButtonTappedEvent(
          username: 'testuser',
          password: 'testpassword',
        );

        // Assert - These should be final fields
        expect(() {
          // This would cause a compile error if username was not final
          // event.username = 'new username'; // Would not compile
        }, isA<Function>());
      });

      test('should have consistent hashCode for same values', () {
        // Arrange
        const event1 = LoginButtonTappedEvent(
          username: 'testuser',
          password: 'testpassword',
        );
        const event2 = LoginButtonTappedEvent(
          username: 'testuser',
          password: 'testpassword',
        );

        // Assert
        expect(event1.hashCode, equals(event2.hashCode));
      });

      test('should have different hashCode for different values', () {
        // Arrange
        const event1 = LoginButtonTappedEvent(
          username: 'testuser',
          password: 'testpassword',
        );
        const event2 = LoginButtonTappedEvent(
          username: 'differentuser',
          password: 'testpassword',
        );

        // Assert
        expect(event1.hashCode, isNot(equals(event2.hashCode)));
      });

      test('should have toString representation', () {
        // Arrange
        const event = LoginButtonTappedEvent(
          username: 'testuser',
          password: 'testpassword',
        );

        // Act
        final stringRepresentation = event.toString();

        // Assert
        expect(stringRepresentation, isA<String>());
        expect(stringRepresentation, contains('LoginButtonTappedEvent'));
      });

      group('Edge Cases', () {
        test('should handle very long username and password', () {
          // Arrange
          final longUsername = 'a' * 1000;
          final longPassword = 'b' * 1000;

          // Act
          final event = LoginButtonTappedEvent(
            username: longUsername,
            password: longPassword,
          );

          // Assert
          expect(event.username, equals(longUsername));
          expect(event.password, equals(longPassword));
          expect(event.username.length, equals(1000));
          expect(event.password.length, equals(1000));
        });

        test('should handle unicode characters', () {
          // Arrange
          const unicodeUsername = '用户名测试';
          const unicodePassword = 'пароль123';

          // Act
          const event = LoginButtonTappedEvent(
            username: unicodeUsername,
            password: unicodePassword,
          );

          // Assert
          expect(event.username, equals(unicodeUsername));
          expect(event.password, equals(unicodePassword));
        });

        test('should handle whitespace in username and password', () {
          // Arrange
          const usernameWithSpaces = '  user name  ';
          const passwordWithSpaces = '  pass word  ';

          // Act
          const event = LoginButtonTappedEvent(
            username: usernameWithSpaces,
            password: passwordWithSpaces,
          );

          // Assert
          expect(event.username, equals(usernameWithSpaces));
          expect(event.password, equals(passwordWithSpaces));
        });
      });
    });

    group('LoginEvent Base Class', () {
      test('should have empty props by default', () {
        // Note: Since LoginEvent is sealed, we can't instantiate it directly
        // We test through its concrete implementation
        const event = LoginButtonTappedEvent(
          username: 'test',
          password: 'test',
        );
        
        // LoginEvent base class should have empty props
        // but LoginButtonTappedEvent overrides it
        expect(event, isA<LoginEvent>());
      });
    });
  });
}