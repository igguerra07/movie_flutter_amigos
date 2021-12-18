import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:movie_flutter_amigos/app/services/api/api_client.dart';
import 'package:movie_flutter_amigos/app/services/api/api_constants.dart';

class ApiClientImpl implements ApiClient {
  final Dio _dio;
  final List<Interceptor> _interceptors;

  ApiClientImpl(this._dio, this._interceptors) {
    _dio.options.baseUrl = ApiConstants.baseURL;

    _dio.options.headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };

    _dio.options.sendTimeout = 10000;
    _dio.options.sendTimeout = 10000;
    _dio.options.receiveTimeout = 10000;

    //for testing
    _dio.interceptors.add(LogInterceptor(responseBody: true));

    //Classe
    _dio.interceptors.addAll(_interceptors);
  }

  @override
  Future get({
    required String path,
    Map<String, dynamic> queryParams = const {},
  }) async {
    final response = await _dio.get(path, queryParameters: queryParams);
    final data = json.encode(response.data);
    return data;
  }
}
