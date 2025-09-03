import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';
import 'package:magic_rewards/shared/services/di/di_service.dart';
import 'package:magic_rewards/core/presentation/observers/app_bloc_observer.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';

import 'app.dart';

Future<void> main() async {
  ///todo: reject bad certificate
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize logging system
  LoggerService.app('🚀 Application starting...');
  
  // Set up BlocObserver for comprehensive state management logging
  Bloc.observer = AppBlocObserver();
  LoggerService.app('📱 BlocObserver initialized');
  
  // Initialize core services
  LoggerService.app('💾 Initializing cache storage...');
  await CacheStorageServices.init();
  
  LoggerService.app('📐 Ensuring screen size...');
  await ScreenUtil.ensureScreenSize();
  
  LoggerService.app('🔗 Initializing dependency injection...');
  DIServices().init();
  
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
