import 'dart:typed_data';

import 'package:code_example/core/data/storage/storage_constants.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:code_example/core/data/exceptions/exceptions.dart';
import 'package:code_example/features/auth/data/datasources/auth_datasource.dart';
import 'package:code_example/features/auth/data/datasources/networking/auth_api.dart';
import 'package:code_example/features/auth/data/dto/auth_user_dto.dart';

class ApiAuthDatasourceImpl implements AuthDatasource {
  final FlutterSecureStorage _storage;
  final AuthApi _api;

  ApiAuthDatasourceImpl(this._storage, this._api);

  @override
  Future<void> attemptAccess() async {
    String? jwt = await _storage.read(key: storageJwtKey);
    if (jwt != null) {
      return;
    }
    await Future.delayed(const Duration(seconds: 2));
    throw UnauthorizedException();
  }

  @override
  Future<void> validateEmail(String email) async {
    return await _api.validateEmail(email);
  }

  @override
  Future<void> validatePhone(String phone) async {
    return await _api.validatePhone(phone);
  }

  @override
  Future<void> recoveryValidateEmail(String email) async {
    return await _api.recoveryValidateEmail(email);
  }

  @override
  Future<void> recoveryValidatePhone(String phone) async {
    return await _api.recoveryValidatePhone(phone);
  }

  @override
  Future<void> validateNickname(String nickname) async {
    return await _api.validateNickname(nickname);
  }

  @override
  Future<void> requestVerificationCode(String contactInfo) async {
    return await _api.requestVerificationCode(contactInfo);
  }

  @override
  Future<bool> validateVerificationCode(String contactInfo, String code) async {
    return await _api.validateVerificationCode(contactInfo, code);
  }

  @override
  Future<void> signUpUser(AuthUserDto userDto) async {
    var tokensMap = await _api.signUpUser(userDto);
  }

  @override
  Future<bool> signInFacebook() async {
    return false;
  }

  @override
  Future<bool> signInGoogle() async {
    return false;
  }

  @override
  Future<void> signInUser(String username, String password) async {
    var tokensMap = await _api.signInUser(username, password);
  }

  @override
  Future<void> recoveryUpdatePassword(String? phone, String? email,
      String password, String confirmPassword) async {
    return await _api.recoveryUpdatePassword(
        phone, email, password, confirmPassword);
  }

  Future<void> _saveAccessTokens(Map<String, dynamic> tokensPairMap) async {
    await _storage.write(
        key: accessTokenKey, value: tokensPairMap[accessTokenKey]);
    await _storage.write(
        key: refreshTokenKey, value: tokensPairMap[refreshTokenKey]);
  }

  @override
  Future<void> updateUserOptionalFlow(
      Uint8List? avatar, String? city, String? bio) async {
    return await _api.updateUserOptionalFlow(avatar, city, bio);
  }
}
