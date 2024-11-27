import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();

  Future<void> sendFormData(String url, Map<String, dynamic> data) async {
    try {
      final response = await dio.post(url, data: data);
      print('Response status: ${response.statusCode}');
      print('Response data: ${response.data}');
    } catch (e) {
      print('Error: $e');
    }
  }
}
