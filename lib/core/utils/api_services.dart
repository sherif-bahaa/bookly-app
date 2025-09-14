import 'package:dio/dio.dart';

class ApiServices {
  final _baseurl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;
  ApiServices(this.dio);
  Future<Map<String, dynamic>> get(final String url) async {
    var respons = await dio.get('$_baseurl$url');
    return respons.data;
  }
}
