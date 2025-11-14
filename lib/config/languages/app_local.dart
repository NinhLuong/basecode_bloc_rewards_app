import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:bloc_rewards/shared/extensions/language_extensions/app_languages_extension.dart';
import 'package:bloc_rewards/shared/extensions/string_extensions/string_to_app_language.dart';
import 'package:bloc_rewards/core/data/datasources/local/cache/cache_storage_services.dart';
import 'package:bloc_rewards/generated/l10n.dart';

import '../enums/app_languages.dart';

/// Class [AppLocale] that handles localization logic in the app
class AppLocale {
  static AppLocale? _instance;

  AppLocale._();

  final String defaultLocale = 'en';

  factory AppLocale() => _instance ??= AppLocale._();

  // Returns the current language based on system locale first, then cached locale
  AppLanguages currentLanguage() {
    // Check if user has manually set a language preference
    final cachedLocale = CacheStorageServices().locale;
    
    // If no cached locale or empty string, use system locale
    if (cachedLocale == null || cachedLocale.isEmpty) {
      return getSystemLanguage();
    }
    
    return cachedLocale.toAppLanguage;
  }

  /// Gets the system's current language
  AppLanguages getSystemLanguage() {
    final systemLocale = ui.PlatformDispatcher.instance.locale;
    final languageCode = systemLocale.languageCode;
    
    // Check if the system language is supported
    if (languageCode == 'vi') {
      return AppLanguages.vietnam;
    } else if (languageCode == 'en') {
      return AppLanguages.english;
    }
    
    // Default to English if system language is not supported
    return AppLanguages.english;
  }

  /// Gets the current system locale string
  String getSystemLocaleString() {
    final systemLocale = ui.PlatformDispatcher.instance.locale;
    return systemLocale.languageCode;
  }

  /// Checks if the current cached language matches system language
  bool isLanguageMatchingSystem() {
    final cachedLocale = CacheStorageServices().locale;
    final systemLocale = getSystemLocaleString();
    
    return cachedLocale == systemLocale;
  }

  // Returns a list of supported locales in the app, containing the English and Arabic locales
  List<Locale> get supportedLocales =>
      AppLanguages.values.map((e) => e.locale).toList();

  // Changes the language based on the provided AppLanguages enum value
  Future<void> setLocale(AppLanguages locale) async {
    if (currentLanguage() == locale) return;
    await S.load(locale.locale);
    await CacheStorageServices().setLocale(locale.stringify);
  }

  /// Synchronizes app language with system language
  Future<void> syncWithSystemLocale() async {
    final systemLanguage = getSystemLanguage();
    final currentLang = currentLanguage();
    
    if (systemLanguage != currentLang) {
      await setLocale(systemLanguage);
    }
  }

  /// Clears cached locale to use system locale
  Future<void> useSystemLocale() async {
    // Clear cached locale by setting it to null/empty
    await CacheStorageServices().setLocale('');
    final systemLanguage = getSystemLanguage();
    await S.load(systemLanguage.locale);
  }

  // Checks if the current language is English
  bool isEnglish() => currentLanguage() == AppLanguages.english;

  // Checks if the current language is Arabic
  bool isArabic() => currentLanguage() == AppLanguages.vietnam;
}
