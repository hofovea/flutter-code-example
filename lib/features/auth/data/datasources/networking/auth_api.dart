import 'dart:math';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:code_example/core/data/networking/authorized_dio/authorized_dio.dart';
import 'package:code_example/features/auth/data/dto/auth_user_dto.dart';

abstract class AuthApi {
  Future<void> attemptAccess();

  Future<void> validateEmail(String email);

  Future<void> validatePhone(String phone);

  Future<void> recoveryValidateEmail(String email);

  Future<void> recoveryValidatePhone(String phone);

  Future<void> recoveryUpdatePassword(
    String? phone,
    String? email,
    String password,
    String confirmPassword,
  );

  Future<void> validateNickname(String nickname);

  Future<void> requestVerificationCode(String contactInfo);

  Future<bool> validateVerificationCode(String contactInfo, String code);

  Future<dynamic> signUpUser(AuthUserDto userDto);

  Future<Map<String, dynamic>> signInFacebook();

  Future<Map<String, dynamic>> signInGoogle();

  Future<Map<String, dynamic>> signInUser(String username, String password);

  Future<void> updateUserOptionalFlow(
      Uint8List? avatar, String? city, String? bio);
}

class AuthApiImpl implements AuthApi {
  final Dio _dio;
  final AuthorizedDio _authorizedDio;

  AuthApiImpl(this._dio, this._authorizedDio);

  @override
  Future<void> attemptAccess() {
    throw UnimplementedError();
  }

  @override
  Future<void> validateEmail(String email) async {
    await Future.delayed(const Duration(seconds: 3));
    if (!Random().nextBool()) {
      throw UnimplementedError();
    }
  }

  @override
  Future<void> validatePhone(String phone) async {
    await Future.delayed(const Duration(seconds: 3));
    if (!Random().nextBool()) {
      throw UnimplementedError();
    }
  }

  @override
  Future<void> recoveryValidateEmail(String email) async {
    await Future.delayed(const Duration(seconds: 3));
    if (!Random().nextBool()) {
      throw UnimplementedError();
    }
  }

  @override
  Future<void> recoveryValidatePhone(String phone) async {
    await Future.delayed(const Duration(seconds: 3));
    if (!Random().nextBool()) {
      throw UnimplementedError();
    }
  }

  @override
  Future<void> validateNickname(String nickname) async {
    await Future.delayed(const Duration(seconds: 3));
    if (!Random().nextBool()) {
      throw UnimplementedError();
    }
  }

  @override
  Future<void> requestVerificationCode(String contactInfo) async {
    await Future.delayed(const Duration(seconds: 3));
    if (!Random().nextBool()) {
      throw UnimplementedError();
    }
  }

  @override
  Future<bool> validateVerificationCode(String contactInfo, String code) async {
    await Future.delayed(const Duration(seconds: 3));
    if (!Random().nextBool()) {
      throw UnimplementedError();
    }
    return true;
  }

  @override
  Future<Map<String, dynamic>> signInUser(
      String username, String password) async {
    await Future.delayed(const Duration(seconds: 3));
    throw UnimplementedError();
  }

  @override
  Future<dynamic> signUpUser(AuthUserDto userDto) async {
    await Future.delayed(const Duration(seconds: 3));
    if (!Random().nextBool()) {
      throw UnimplementedError();
    }
  }

  @override
  Future<Map<String, dynamic>> signInFacebook() async {
    throw UnimplementedError();
  }

  @override
  signInGoogle() async {
    throw UnimplementedError();
  }

  @override
  Future<void> recoveryUpdatePassword(
    String? email,
    String? phone,
    String password,
    String confirmPassword,
  ) async {
    await Future.delayed(const Duration(seconds: 3));
    if (!Random().nextBool()) {
      throw UnimplementedError();
    }
  }

  @override
  Future<void> updateUserOptionalFlow(
      Uint8List? avatar, String? city, String? bio) async {
    await Future.delayed(const Duration(seconds: 3));
    if (!Random().nextBool()) {
      throw UnimplementedError();
    }
  }
}
