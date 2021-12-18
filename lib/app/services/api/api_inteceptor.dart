import 'package:dio/dio.dart';
import 'package:movie_flutter_amigos/app/services/api/api_constants.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters.putIfAbsent("api_key", () => ApiConstants.apiKey);
    super.onRequest(options, handler);
  }
}
