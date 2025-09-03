import 'package:flutter/material.dart';
import 'package:magic_rewards/config/enums/app_languages.dart';

extension AppLanguagesExtensions on AppLanguages {
  // TODO: Customize app button decoration properties here

  String get stringify {
    switch (this) {
      case AppLanguages.vietnam:
        return 'vi';
      case AppLanguages.english:
        return 'en';
    }
  }

  Locale get locale {
    switch (this) {
      case AppLanguages.vietnam:
        return const Locale('vi', 'VN');
      case AppLanguages.english:
        return const Locale('en', 'US');
    }
  }
}
