import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:code_example/core/domain/failures/failures.dart';
import 'package:code_example/features/auth/domain/entities/auth_user.dart';

abstract class AuthRepository {
  Future<Either<Failure, void>> attemptAccess();

  Future<Either<Failure, void>> validateNickname(String nickname);

  Future<Either<Failure, void>> validatePhone(String phone);

  Future<Either<Failure, void>> validateEmail(String email);

  Future<Either<Failure, void>> recoveryUpdatePassword(
      String? phone, String? email, String password, String confirmPassword);

  Future<Either<Failure, void>> recoveryValidateEmail(String email);

  Future<Either<Failure, void>> recoveryValidatePhone(String phone);

  Future<Either<Failure, void>> requestVerificationCode(String contactInfo);

  Future<Either<Failure, bool>> validateVerificationCode(
      String contactInfo, String code);

  Future<Either<Failure, void>> signUpUser(AuthUser user);

  Future<Either<Failure, bool>> signInFacebook();

  Future<Either<Failure, bool>> signInGoogle();

  Future<Either<Failure, void>> signInUser(String username, String password);

  Future<Either<Failure, void>> updateUserOptionalFlow(
      Uint8List? avatar, String? city, String? bio);
}
