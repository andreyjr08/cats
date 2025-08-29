import 'dart:convert';
import 'package:cats/data/utils/constant_endpoints.dart';
import 'package:http/http.dart' as http;
import 'package:cats/data/utils/exceptions.dart';

class HttpService {
  final String baseUrl;
  final Map<String, String> defaultHeaders;

  HttpService({
    this.baseUrl = ConstantEndpoints.baseUrl,
    this.defaultHeaders = const {"Content-Type": "application/json"},
  });

  Future<dynamic> get(String path, {Map<String, String>? queryParams}) async {
    try {
      final uri = Uri.parse(
        "$baseUrl$path",
      ).replace(queryParameters: queryParams);

      final response = await http.get(uri, headers: defaultHeaders);

      return _handleResponse(response);
    } catch (e) {
      throw Exception(e);
    }
  }

  dynamic _handleResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      if (response.body.isEmpty) return null;
      return jsonDecode(response.body); // Puede ser Map o List
    } else {
      throw ServerException(
        "Error: ${response.statusCode} - ${response.reasonPhrase}",
      );
    }
  }
}
