import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bloc_rewards/core/data/datasources/local/cache/cache_storage_services.dart';
import 'package:bloc_rewards/config/di/injectable_config.dart';
import 'package:bloc_rewards/core/presentation/observers/app_bloc_observer.dart';
import 'package:bloc_rewards/shared/services/logger/logger_service.dart';
import 'package:bloc_rewards/config/env/app_env_config.dart';

import 'app.dart';

Future<void> main() async {
  ///todo: reject bad certificate
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize logging system
  L.app('🚀 Application starting...');
  
  // Set up BlocObserver for comprehensive state management logging
  Bloc.observer = AppBlocObserver();
  L.app('📱 BlocObserver initialized');
  
  // Load environment configuration FIRST
  L.app('⚙️ Loading environment configuration...');
  await AppEnvConfig.loadEnv();
  L.app('✅ Environment loaded: ${AppEnvConfig.env}');
  L.app('🌐 API Base URL: ${AppEnvConfig.apiBaseUrl}');
  
  // Initialize core services
  L.app('💾 Initializing cache storage...');
  await CacheStorageServices.init();
  
  L.app('📐 Ensuring screen size...');
  await ScreenUtil.ensureScreenSize();
  
  L.app('🔗 Initializing dependency injection...');
  // DIServices().init();
  configureDependencies();
  
  L.app('✅ Application initialization completed');
  
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
