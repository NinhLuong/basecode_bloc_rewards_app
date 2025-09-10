import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';
import 'package:magic_rewards/config/di/injectable_config.dart';
import 'package:magic_rewards/core/presentation/observers/app_bloc_observer.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';
import 'package:magic_rewards/config/env/app_env_config.dart';

import 'app.dart';

Future<void> main() async {
  ///todo: reject bad certificate
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize logging system
  LoggerService.app('🚀 Application starting...');
  
  // Set up BlocObserver for comprehensive state management logging
  Bloc.observer = AppBlocObserver();
  LoggerService.app('📱 BlocObserver initialized');
  
  // Load environment configuration FIRST
  LoggerService.app('⚙️ Loading environment configuration...');
  await AppEnvConfig.loadEnv();
  LoggerService.app('✅ Environment loaded: ${AppEnvConfig.env}');
  LoggerService.app('🌐 API Base URL: ${AppEnvConfig.apiBaseUrl}');
  
  // Initialize core services
  LoggerService.app('💾 Initializing cache storage...');
  await CacheStorageServices.init();
  
  LoggerService.app('📐 Ensuring screen size...');
  await ScreenUtil.ensureScreenSize();
  
  LoggerService.app('🔗 Initializing dependency injection...');
  // DIServices().init();
  configureDependencies();
  
  LoggerService.app('✅ Application initialization completed');
  
  runApp(const MyApp());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
