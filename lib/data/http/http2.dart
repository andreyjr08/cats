import 'dart:io';

import 'package:dio/dio.dart';
import 'package:cats/data/utils/exceptions.dart';
import 'package:cats/data/utils/constant_endpoints.dart';

class HttpService {
  final Dio _dio;

  HttpService({required String baseUrl})
    : _dio = Dio(
        BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: const Duration(seconds: 20),
          receiveTimeout: const Duration(seconds: 15),
        ),
      );

  Future<T> get<T>(
    String path,
    T Function(dynamic data) fromJson, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.get(
        path,
        queryParameters: queryParameters,
        options: Options(headers: await _getHeaders(endPoint: path)),
      );

      return fromJson(_handleResponse(response));
    } on DioException catch (e) {
      throw ServerException(e.message ?? "Error desconocido");
    }
  }

  dynamic _handleResponse(Response response) {
    if (response.statusCode == 200) {
      return response.data; // Puede ser List o Map
    } else {
      throw ServerException("Error: ${response.statusCode}");
    }
  }

  Future<Map<String, String>> _getHeaders({required String endPoint}) async {
    final Map<String, String> listaCabeceras = <String, String>{};

    listaCabeceras.putIfAbsent(
      HttpHeaders.contentTypeHeader,
      () => 'application/json',
    );

    listaCabeceras.putIfAbsent(
      HttpHeaders.connectionHeader,
      () => 'Keep-Alive',
    );

    if (!_validateBlackList(endPoint)) {
      //final secureStorage = const FlutterSecureStorage();
      //final String? token = await secureStorage.read(key: 'tokenSesion');

      //if (token != null && token.isNotEmpty) {
      //}
      listaCabeceras.putIfAbsent(
        'x-api-key',
        () =>
            'live_99Qe4Ppj34NdplyLW67xCV7Ds0oSLKGgcWWYnSzMJY9C0QOu0HUR4azYxWkyW2nr',
      );
    }

    return listaCabeceras;
  }

  bool _validateBlackList(String endPoint) {
    List<String> blackList = ConstantEndpoints.blackList;

    for (String i in blackList) {
      if (endPoint.contains(i)) {
        return true;
      }
    }
    return false;
  }
}
