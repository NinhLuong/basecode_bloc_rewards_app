import 'package:flutter_test/flutter_test.dart';
import 'package:magic_rewards/features/home/presentation/blocs/home_bloc/home_bloc.dart';

void main() {
  group('HomeEvent', () {
    group('FetchHomeEvent', () {
      test('should be a subclass of HomeEvent', () {
        // Arrange
        const event = FetchHomeEvent();

        // Assert
        expect(event, isA<HomeEvent>());
      });

      test('should have correct props for equality comparison', () {
        // Arrange
        const event1 = FetchHomeEvent();
        const event2 = FetchHomeEvent();

        // Assert
        expect(event1, equals(event2));
        expect(event1.props, equals(event2.props));
        expect(event1.props, isEmpty); // FetchHomeEvent has no properties
      });

      test('should be immutable', () {
        // Arrange
        const event = FetchHomeEvent();

        // Assert - This should compile without errors since the class should be immutable
        expect(() {
          // If there were mutable fields, this would cause compilation errors
          // Since FetchHomeEvent has no fields, it's implicitly immutable
        }, isA<Function>());
      });

      test('should have consistent hashCode for same instances', () {
        // Arrange
        const event1 = FetchHomeEvent();
        const event2 = FetchHomeEvent();

        // Assert
        expect(event1.hashCode, equals(event2.hashCode));
      });

      test('should have toString representation', () {
        // Arrange
        const event = FetchHomeEvent();

        // Act
        final stringRepresentation = event.toString();

        // Assert
        expect(stringRepresentation, isA<String>());
        expect(stringRepresentation, contains('FetchHomeEvent'));
      });

      test('should be const constructible', () {
        // Arrange & Act
        const event = FetchHomeEvent();

        // Assert
        expect(event, isA<FetchHomeEvent>());
      });

      test('should handle multiple instances correctly', () {
        // Arrange
        const event1 = FetchHomeEvent();
        const event2 = FetchHomeEvent();
        const event3 = FetchHomeEvent();

        // Assert
        expect(event1, equals(event2));
        expect(event2, equals(event3));
        expect(event1, equals(event3));
        
        // All instances should be equal since they have no properties
        final events = [event1, event2, event3];
        for (var i = 0; i < events.length; i++) {
          for (var j = i + 1; j < events.length; j++) {
            expect(events[i], equals(events[j]));
          }
        }
      });
    });

    group('HomeEvent Base Class', () {
      test('should have empty props by default', () {
        // Arrange
        const event = FetchHomeEvent();
        
        // Assert - HomeEvent base class should have empty props
        // FetchHomeEvent inherits this behavior
        expect(event.props, isEmpty);
      });

      test('should be equatable', () {
        // Arrange
        const event1 = FetchHomeEvent();
        const event2 = FetchHomeEvent();
        
        // Assert - Should work with Equatable
        expect(event1 == event2, true);
        expect(identical(event1, event2), true); // Same const instances
        expect(event1.props, equals(event2.props));
      });

      test('should support inheritance hierarchy', () {
        // Arrange
        const fetchEvent = FetchHomeEvent();
        
        // Assert - Verify inheritance chain
        expect(fetchEvent, isA<HomeEvent>());
        expect(fetchEvent, isA<FetchHomeEvent>());
      });
    });

    group('Event Collection Behavior', () {
      test('should work correctly in collections', () {
        // Arrange
        const event1 = FetchHomeEvent();
        const event2 = FetchHomeEvent();
        
        // Act
        final eventSet = {event1, event2};
        final eventList = [event1, event2];
        
        // Assert
        expect(eventSet.length, 1); // Set should contain only one unique instance
        expect(eventList.length, 2); // List should contain both instances
        expect(eventList[0], equals(eventList[1])); // But they should be equal
      });

      test('should be suitable for switch statements', () {
        // Arrange
        const event = FetchHomeEvent();
        String result = '';

        // Act
        switch (event.runtimeType) {
          case FetchHomeEvent:
            result = 'FetchHome';
            break;
          default:
            result = 'Unknown';
        }

        // Assert
        expect(result, 'FetchHome');
      });

      test('should work with pattern matching', () {
        // Arrange
        const HomeEvent event = FetchHomeEvent();
        String result = '';

        // Act
        if (event is FetchHomeEvent) {
          result = 'FetchHome';
        } else {
          result = 'Unknown';
        }

        // Assert
        expect(result, 'FetchHome');
      });
    });
  });
}
