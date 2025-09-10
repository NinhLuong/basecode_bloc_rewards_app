import 'package:magic_rewards/config/env/app_env.dart';
import 'package:magic_rewards/config/env/dev_env.dart';
import 'package:magic_rewards/config/env/dummy_env.dart';
import 'package:magic_rewards/config/env/local_env.dart';
import 'package:magic_rewards/config/env/prod_env.dart';
import 'package:package_info_plus/package_info_plus.dart';

enum Environment { local, dummy, dev, prod }

class AppEnvConfig {
  static Environment env = Environment.dev;
  static late AppEnv _appEnv;
  static PackageInfo? _packageInfo;
  static String? appVersion;

  // Getters that provide safe access to environment variables
  static String get baseUrl => _appEnv.baseUrl;
  static String get apiBaseUrl => _appEnv.apiBaseUrl;
  static String get apiKey => _appEnv.apiKey;

  static Future<void> loadEnv() async {
    try {
      await _checkEnv();
      _initializeAppEnv();
      
      // Validate that environment variables are loaded
      if (apiBaseUrl.isEmpty) {
        throw Exception('API Base URL is empty. Check your .env files.');
      }
      
    } catch (e) {
      throw Exception('Failed to load environment configuration: $e');
    }
  }

  static void _initializeAppEnv() {
    switch (env) {
      case Environment.local:
        _appEnv = LocalEnv();
        break;
      case Environment.dummy:
        _appEnv = DummyEnv();
        break;
      case Environment.dev:
        _appEnv = DevEnv();
        break;
      case Environment.prod:
        _appEnv = ProdEnv();
        break;
    }
  }

  static Future<void> _checkEnv() async {
    _packageInfo = await PackageInfo.fromPlatform();
    appVersion = _packageInfo?.version;
    final packageName = _packageInfo?.packageName ?? '';
    
    try {
      if (packageName.contains(Environment.local.name)) {
        env = Environment.local;
      } else if (packageName.contains(Environment.dummy.name)) {
        env = Environment.dummy;
      } else if (packageName.contains(Environment.dev.name)) {
        env = Environment.dev;
      } else {
        env = Environment.prod;
      }
    } catch (e) {
      // Default to dev environment if detection fails
      env = Environment.dev;
    }
  }
}
