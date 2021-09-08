import 'package:dio/dio.dart';

class ApiBaseHelper {
  static String url = 'BASE_URL';
  static BaseOptions opts = BaseOptions(
    baseUrl: url,
    responseType: ResponseType.json,
    connectTimeout: 30000,
    receiveTimeout: 30000,
  );

  static Dio createDio() {
    return Dio(opts);
  }

  static Dio addInterceptors(Dio dio) {
    return dio
      ..interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) => requestInterceptor(options),
          onResponse: (Response response, handler) => response,
          onError: (e, handler) => e.response!.data,
        ),
      );
  }

  static dynamic requestInterceptor(RequestOptions options) async {
    // Get your JWT token
    // token = await storage.read(key: USER_TOKEN);
    const token = '';
    if (token != '')
      options.headers.addAll({"Authorization": "Bearer: $token"});
    return options;
  }

  static final dio = createDio();
  static final baseAPI = addInterceptors(dio);

  Future<Response?> GetAsync(String url) async {
    try {
      // Response response = await dio.get(url);
      Response response = await baseAPI.get(url);
      return response;
    } on DioError catch (e) {
      // Handle error
      print(e);
    }
  }

  Future<Response?> PostAsync(String url, dynamic data) async {
    try {
      Response response = await baseAPI.post(url, data: data);
      return response;
    } on DioError catch (e) {
      // Handle error

    }
  }

  Future<Response?> PutAsync(String url, dynamic data) async {
    try {
      Response response = await baseAPI.put(url, data: data);
      return response;
    } on DioError catch (e) {
      // Handle error
    }
  }

  Future<Response?> DeleteAsync(String url) async {
    try {
      Response response = await baseAPI.delete(url);
      return response;
    } on DioError catch (e) {
      // Handle error
    }
  }
}
