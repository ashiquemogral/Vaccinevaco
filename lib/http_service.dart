import 'package:dio/dio.dart';

class HttpService {
  Dio _dio;
  final baseUrl = "https://cdn-api.co-vin.in/api/v2/";

  HttpService() {
    _dio = Dio(BaseOptions(
      baseUrl: baseUrl,
    ));
    initializeInterceptors();
  }

  Future<Response> getRequest(String endPoint) async {
    Response response;
    try {
      response = await _dio.get(endPoint);
    } on DioError catch (e) {
      print(e);
      throw Exception(e.message);
    }
    return response;
  }

  initializeInterceptors() {
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (request) {
        print(request);
      },
      onResponse: (response) {},
      onError: (error) {},
    ));
  }
}
