import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:stroller_shop/di/app_config.dart';

@module
abstract class NetworkModule {
  @lazySingleton
  Dio dio() => Dio(
    BaseOptions(
      baseUrl: AppConfig.apiBaseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 60),
      headers: {'Accept': 'application/json'},
    ),
  )..interceptors.addAll([if (kDebugMode) LogInterceptor()]);
}
