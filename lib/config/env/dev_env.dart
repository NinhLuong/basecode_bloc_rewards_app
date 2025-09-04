import 'package:envied/envied.dart';
import 'package:magic_rewards/config/env/app_env.dart';


part 'dev_env.g.dart';

@Envied(name: 'Env', path: 'assets/env/.env.dev', obfuscate: true)
class DevEnv implements AppEnv {
  @override
  @EnviedField(varName: 'API_BASE_URL')
  final String apiBaseUrl = _Env.apiBaseUrl;

  @override
  @EnviedField(varName: 'BASE_URL')
  final String baseUrl = _Env.baseUrl;

  @override
  @EnviedField(varName: 'API_KEY')
  final String apiKey = _Env.apiKey;
}
