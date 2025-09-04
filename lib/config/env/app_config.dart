import 'package:magic_rewards/config/env/app_env.dart';
import 'package:magic_rewards/config/env/dev_env.dart';
import 'package:magic_rewards/config/env/dummy_env.dart';
import 'package:magic_rewards/config/env/local_env.dart';
import 'package:magic_rewards/config/env/prod_env.dart';
import 'package:package_info_plus/package_info_plus.dart';


enum Environment { local, dummy, dev, prod }

class AppConfig {
  static Environment env = Environment.dev;
  static AppEnv appEnv = DevEnv();
  static String baseUrl = '';
  static String apiBaseUrl = '';
  static String apiKey = '';
  static PackageInfo? _packageInfo;
  static String? appVersion;

  static Future<void> loadEnv() async {
    await _checkEnv();

    switch (env) {
      case Environment.local:
        appEnv = LocalEnv();
        break;
      case Environment.dummy:
        appEnv = DummyEnv();
        break;
      case Environment.dev:
        appEnv = DevEnv();
        break;
      case Environment.prod:
        appEnv = ProdEnv();
        break;
    }

    apiBaseUrl = appEnv.apiBaseUrl;
    baseUrl = appEnv.baseUrl;
    apiKey = appEnv.apiKey;
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
      env = Environment.dev;
    }
  }
}
