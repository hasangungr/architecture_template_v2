import 'package:architecture_template_v2/product/init/env/app_enviroment.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

class DioService {
  static DioService? _instance;
  static DioService? get instance {
    _instance ??= DioService._init();
    return _instance;
  }

  late final Dio _dio;

  DioService._init() {
    _dio = Dio(BaseOptions(baseUrl: AppEnviroment.apiKey));
  }

  Future<List<T>?> fetchData<T>(String rawValue, BaseModel model) async {
    Response response = await _dio.get(rawValue);

    if (response.data != null) {
      List data = response.data;

      List<T> bisey = data.map((e) => model.fromJson(e)).toList().cast<T>();

      return bisey;
    } else {
      debugPrint("Request failed with status: ${response.statusCode}");
      return null;
    }
  }
}
