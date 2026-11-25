import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://rita-lab13.requestcatcher.com',
    ),
  );

  Future<void> login(Map<String, dynamic> data) async {
    await _dio.post('/login', data: data);
  }

  Future<void> signUp(Map<String, dynamic> data) async {
    await _dio.post('/signup', data: data);
  }

  Future<void> resetPassword(Map<String, dynamic> data) async {
    await _dio.post('/reset', data: data);
  }
}