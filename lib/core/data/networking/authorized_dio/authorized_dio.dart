import 'dart:io';

import 'package:dio/dio.dart';
import 'package:code_example/core/data/networking/networking_constants.dart';
import 'package:code_example/core/data/storage/storage_constants.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthorizedDio {
  final FlutterSecureStorage _storage;

  late final Dio dio;

  AuthorizedDio(this._storage) {
    dio = Dio(
      BaseOptions(
        baseUrl: NetworkingConstants.baseMainUrl,
      ),
    )..interceptors.add(
        InterceptorsWrapper(
          onRequest: (RequestOptions requestOptions, RequestInterceptorHandler handler) async {
            final String? accessToken = await _readAccessToken();
            if (accessToken != null) {
              requestOptions.headers.putIfAbsent(
                HttpHeaders.authorizationHeader,
                () => 'Bearer $accessToken',
              );
            }
            handler.next(requestOptions);
          },
        ),
      );
  }

  Future<String?> _readAccessToken() async {
    final String? accessToken = await _storage.read(key: accessTokenKey);
    return accessToken;
  }
}
