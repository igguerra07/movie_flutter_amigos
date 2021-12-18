import 'package:dio/dio.dart';

class AppError {
  final DioErrorType type;
  final String message;

  AppError({
    this.type = DioErrorType.other,
    required this.message,
  });
}
