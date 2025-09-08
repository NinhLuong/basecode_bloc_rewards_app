import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';
import 'package:magic_rewards/generated/l10n.dart';

/// Test helper to initialize localization delegate for tests
class TestHelper {
  static Future<void> setupLocalization() async {
    // Initialize the S delegate for tests
    await S.load(const Locale('en'));
  }

  /// Create a MaterialApp widget with localization for widget tests
  static Widget createMaterialAppWithLocalization({
    required Widget child,
    Locale locale = const Locale('en'),
  }) {
    return MaterialApp(
      locale: locale,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: child,
    );
  }
}

/// Test constants
class TestConstants {
  static const testUser = {
    'accessToken': 'test-access-token',
    'accountId': 'test-account-id',
    'account': [
      {
        'id': 'account-1',
        'fullname': 'Test User',
        'username': 'testuser',
        'email': 'test@example.com',
        'points': '100',
        'redeemed_points': '50',
      }
    ]
  };

  static const testAccount = {
    'id': 'account-1',
    'fullname': 'Test User',
    'username': 'testuser',
    'email': 'test@example.com',
    'points': '100',
    'redeemed_points': '50',
  };
}
