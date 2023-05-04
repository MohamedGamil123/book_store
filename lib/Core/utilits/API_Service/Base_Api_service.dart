import 'package:dio/dio.dart';

class Base_Api_Service {
  final String _baseUrl = "https://www.googleapis.com/books/v1/";
  final Dio _dio;
  Base_Api_Service(this._dio);
  Future<Map<String, dynamic>> getResponse({required String endPoint}) async {
    var response = await _dio.get("$_baseUrl$endPoint");
    return response.data;
  }
}
