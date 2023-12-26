import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';

class DioService{
  final Dio dio;

  DioService(this.dio);
  DioService setupToken(String? accessToken){
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };

    dio.options = BaseOptions(
        receiveTimeout: const Duration(hours: 1),
        connectTimeout: const Duration(hours: 1));
    dio.options.headers["Authorization"] = "Bearer $accessToken";
    return DioService(dio);
  }
  showResponseConsole(Response response) {
    if (response.data is Map<dynamic, dynamic>) {
      var data = Map<String, dynamic>.from(response.data);
      print(data);
    } else if (response.data is List<dynamic>) {
      var data = List.from(response.data);
      // ignore: avoid_print
      print("RESPONSE: $data");
    }
  }

}