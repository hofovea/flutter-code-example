import 'dart:typed_data';

import 'package:code_example/features/auth/data/dto/auth_user_dto.dart';

abstract class AuthDatasource {
  Future<void> attemptAccess();

  Future<void> validatePhone(String phone);

  Future<void> validateEmail(String email);

  Future<void> recoveryValidateEmail(String email);

  Future<void> recoveryValidatePhone(String phone);

  Future<void> recoveryUpdatePassword(
      String? phone, String? email, String password, String confirmPassword);

  Future<void> validateNickname(String nickname);

  Future<void> requestVerificationCode(String contactInfo);

  Future<bool> validateVerificationCode(String contactInfo, String code);

  Future<void> signUpUser(AuthUserDto userDto);

  Future<void> signInUser(String username, String password);

  Future<bool> signInFacebook();

  Future<bool> signInGoogle();

  Future<void> updateUserOptionalFlow(
      Uint8List? avatar, String? city, String? bio);
}
