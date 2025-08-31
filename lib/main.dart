import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';
import 'package:magic_rewards/config/di/di_service.dart';

import 'app.dart';

Future<void> main() async {
  ///todo: reject bad certificate
  WidgetsFlutterBinding.ensureInitialized();
  await CacheStorageServices.init();
  await ScreenUtil.ensureScreenSize();
  DIServices().init();
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
