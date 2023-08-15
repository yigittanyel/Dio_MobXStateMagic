import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:vp_app/core/exceptions/envnotfound_exception.dart';

class NetworkManager {
  static NetworkManager? _instance;

  static NetworkManager get instance {
    if (_instance != null) return _instance!;

    _instance = NetworkManager._init();
    return _instance!;
  }

  final String _baseUrl = dotenv.get('BASE_URL');
  late final Dio dio;

  NetworkManager._init() {
    if (_baseUrl.isEmpty) {
      throw EnvironmentNotFoundException('BASE_URL');
    }

    dio = Dio(BaseOptions(baseUrl: _baseUrl));
    if (kDebugMode) dio.interceptors.add(PrettyDioLogger());

    // dio.interceptors.add(InterceptorsWrapper(
    //   onRequest: (options, handler) {
    //     options.path += '.json';
    //     handler.next(options);
    //   },
    // ));
  }
}
