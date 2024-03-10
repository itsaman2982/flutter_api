import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart' hide Response, FormData;
import 'package:get_storage/get_storage.dart';
import 'package:reputation_sensei/data/constants.dart';
import 'logging.dart';

class DioClient extends GetxService {
  final Dio _dio = Dio(
    BaseOptions(baseUrl: Constants.baseUrl, headers: {'Accept': 'application/json'}),
  )..interceptors.add(Logging());

  void logError(DioException e) {
    if (e.response != null) {
      if (kDebugMode) {
        print('Dio error!');
        print('URL: ${e.response?.requestOptions.baseUrl}');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
      }
    } else {
      if (kDebugMode) {
        print('Error sending request!');
        print(e.message);
      }
    }
  }

  Future<dynamic> get(String url,
      {Map<String, dynamic>? queryParams, Map<String, dynamic>? params}) async {
    dynamic response;
    try {
      Response data = await _dio.get(url,
          queryParameters: queryParams ?? {},
          data: params ?? {},
          options: Options(headers: {
            "Authorization": "Bearer ${GetStorage().read(Constants.accessToken) ?? ''}"
          }));
      response = data.data;
    } on DioException catch (e) {
      logError(e);
      response = e.response?.data;
    }
    return response;
  }

  Future<dynamic> post(String url, {Map<String, dynamic>? params}) async {
    dynamic response;
    try {
      Response data = await _dio.post(url,
          data: params ?? {},
          options: Options(headers: {
            "Authorization": "Bearer ${GetStorage().read(Constants.accessToken) ?? ''}"
          }));
      response = data.data;
    } on DioException catch (e) {
      logError(e);
      response = e.response?.data;
    }
    return response;
  }

  Future<dynamic> put(String url, {Map<String, dynamic>? params}) async {
    dynamic response;
    try {
      Response data = await _dio.put(url,
          data: params ?? {},
          options: Options(headers: {
            "Authorization": "Bearer ${GetStorage().read(Constants.accessToken) ?? ''}"
          }));
      response = data.data;
    } on DioException catch (e) {
      logError(e);
      response = e.response?.data;
    }
    return response;
  }

  Future<dynamic> putMultiPart(String url, {Map<String, dynamic>? params}) async {
    dynamic response;
    try {
      FormData formData = FormData.fromMap(params ?? {});
      Response data = await _dio.put(url,
          data: formData,
          options: Options(headers: {
            "Authorization": "Bearer ${GetStorage().read(Constants.accessToken) ?? ''}"
          }));
      response = data.data;
    } on DioException catch (e) {
      logError(e);
      response = e.response?.data;
    }
    return response;
  }

  Future<dynamic> postMultiPart(String url, {Map<String, dynamic>? params}) async {
    dynamic response;
    try {
      FormData formData = FormData.fromMap(params ?? {});
      Response data = await _dio.post(url,
          data: formData,
          options: Options(headers: {
            "Authorization": "Bearer ${GetStorage().read(Constants.accessToken) ?? ''}"
          }));
      response = data.data;
    } on DioException catch (e) {
      logError(e);
      response = e.response?.data;
    }
    return response;
  }
}
