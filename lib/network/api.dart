import 'dart:convert';

import 'response.dart';
import 'util.dart';
import 'package:http/http.dart' as http;

class PaNetwork {

  static Future<PaNetworkResponse> post(String url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    http.Response response = await http.post(
        PaNetworkUtil.parseToUri(url, format: true),
        headers: headers,
        body: body,
        encoding: encoding);

    return PaNetworkResponse(response.body, response.statusCode, response);
  }

  static Future<PaNetworkResponse> get(String url,
      {Map<String, String>? headers}) async {
    http.Response response = await http.get(
      PaNetworkUtil.parseToUri(url, format: true),
      headers: headers,
    );

    return PaNetworkResponse(response.body, response.statusCode, response);
  }

  static Future<PaNetworkResponse> delete(String url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    http.Response response = await http
        .delete(PaNetworkUtil.parseToUri(url, format: true), headers: headers);

    return PaNetworkResponse(response.body, response.statusCode, response);
  }

  static Future<PaNetworkResponse> put(String url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    http.Response response = await http
        .put(PaNetworkUtil.parseToUri(url, format: true), headers: headers);

    return PaNetworkResponse(response.body, response.statusCode, response);
  }

  static Future<PaNetworkResponse> patch(String url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    http.Response response = await http
        .patch(PaNetworkUtil.parseToUri(url, format: true), headers: headers);

    return PaNetworkResponse(response.body, response.statusCode, response);
  }

  static Future<PaNetworkResponse> head(String url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    http.Response response = await http
        .head(PaNetworkUtil.parseToUri(url, format: true), headers: headers);

    return PaNetworkResponse(response.body, response.statusCode, response);
  }
}
