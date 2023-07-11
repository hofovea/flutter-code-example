import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:code_example/core/data/exceptions/exceptions.dart';
import 'package:code_example/core/domain/failures/failures.dart';
import 'package:code_example/features/auth/data/datasources/auth_datasource.dart';
import 'package:code_example/features/auth/data/dto/auth_user_dto.dart';
import 'package:code_example/features/auth/data/repository_impls/exception_message_constants.dart';
import 'package:code_example/features/auth/domain/entities/auth_user.dart';
import 'package:code_example/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDatasource _authDatasource;

  AuthRepositoryImpl(this._authDatasource);

  @override
  Future<Either<Failure, void>> attemptAccess() async {
    try {
      return Right(
        await _authDatasource.attemptAccess(),
      );
    } on UnauthorizedException {
      return Left(
        UnauthorizedFailure(),
      );
    } catch (exception) {
      return Left(
        UnknownFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, void>> validateNickname(String nickname) async {
    try {
      return Right(
        await _authDatasource.validateNickname(nickname),
      );
    } on BadRequestException catch (exception) {
      if (exception.message == nicknameExists) {
        return Left(
          AlreadyExistsFailure(),
        );
      } else {
        return Left(
          InvalidFormatFailure(),
        );
      }
    } catch (exception) {
      return Left(
        UnknownFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, void>> validateEmail(String email) async {
    try {
      return Right(
        await _authDatasource.validateEmail(email),
      );
    } on ConflictException {
      return Left(
        AlreadyExistsFailure(),
      );
    } on BadRequestException {
      return Left(
        InvalidFormatFailure(),
      );
    } catch (exception) {
      return Left(
        UnknownFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, void>> validatePhone(String phone) async {
    try {
      return Right(
        await _authDatasource.validatePhone(phone),
      );
    } on ConflictException {
      return Left(
        AlreadyExistsFailure(),
      );
    } on BadRequestException {
      return Left(
        InvalidFormatFailure(),
      );
    } catch (exception) {
      return Left(
        UnknownFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, void>> recoveryValidateEmail(String email) async {
    try {
      return Right(
        await _authDatasource.recoveryValidateEmail(email),
      );
    } on NotFoundException {
      return Left(
        AccountNotExistsFailure(),
      );
    } on BadRequestException {
      return Left(
        InvalidFormatFailure(),
      );
    } catch (exception) {
      return Left(
        UnknownFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, void>> recoveryValidatePhone(String phone) async {
    try {
      return Right(
        await _authDatasource.recoveryValidatePhone(phone),
      );
    } on NotFoundException {
      return Left(
        AccountNotExistsFailure(),
      );
    } on BadRequestException {
      return Left(
        InvalidFormatFailure(),
      );
    } catch (exception) {
      return Left(
        UnknownFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, void>> requestVerificationCode(
      String contactInfo) async {
    try {
      return Right(
        await _authDatasource.requestVerificationCode(contactInfo),
      );
    } on BadRequestException {
      return Left(
        InvalidFormatFailure(),
      );
    } on TooManyRequestsException catch (exception) {
      return Left(
        TooManyRequestsFailure(tryAfterMillis: exception.tryAfterMillis),
      );
    } catch (exception) {
      return Left(
        UnknownFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> validateVerificationCode(
      String contactInfo, String code) async {
    try {
      return Right(
        await _authDatasource.validateVerificationCode(contactInfo, code),
      );
    } on BadRequestException {
      return Left(
        InvalidFormatFailure(),
      );
    } on TooManyRequestsException {
      return Left(
        TooManyRequestsFailure(),
      );
    } catch (exception) {
      return Left(
        UnknownFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, void>> signUpUser(AuthUser user) async {
    try {
      return Right(
        await _authDatasource.signUpUser(
          AuthUserDto.fromUser(user),
        ),
      );
    } on BadRequestException catch (exception) {
      switch (exception.message) {
        case emailOrPhoneRequired:
          return Left(
            user.email != null ? MissingEmailFailure() : MissingPhoneFailure(),
          );
        case nicknameRequired:
          return Left(
            MissingNicknameFailure(),
          );
        case passwordRequired:
          return Left(
            MissingPasswordFailure(),
          );
        case birthdayRequired:
          return Left(
            MissingBirthdayFailure(),
          );
        case invalidEmail:
          return Left(
            InvalidEmailFormatFailure(),
          );
        case invalidPassword:
          return Left(
            InvalidPasswordFormatFailure(),
          );
        case invalidNickname:
          return Left(
            InvalidNicknameFormatFailure(),
          );
        default:
          return Left(
            UnknownFailure(),
          );
      }
    } on ConflictException catch (exception) {
      switch (exception.message) {
        case emailExists:
          return Left(
            EmailAlreadyRegisteredFailure(),
          );
        case phoneExists:
          return Left(
            PhoneAlreadyRegisteredFailure(),
          );
        case nicknameExistsVariant:
          return Left(
            NicknameAlreadyTakenFailure(),
          );
        default:
          return Left(
            UnknownFailure(),
          );
      }
    } on Exception {
      return Left(
        UnknownFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, void>> signInUser(
      String username, String password) async {
    try {
      return Right(await _authDatasource.signInUser(username, password));
    } on BadRequestException {
      return Left(
        InvalidFormatFailure(),
      );
    } on UnauthorizedException {
      return Left(
        UnauthorizedFailure(),
      );
    } catch (exception) {
      return Left(
        UnknownFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> signInFacebook() async {
    try {
      return Right(
        await _authDatasource.signInFacebook(),
      );
    } on FacebookSignInException {
      return Left(
        FacebookSignInFailure(),
      );
    } on BadRequestException {
      return Left(
        FacebookSignInFailure(),
      );
    } on UnauthorizedException {
      return Left(
        FacebookSignInFailure(),
      );
    } on InternalServerErrorException {
      return Left(
        InternalServerErrorFailure(),
      );
    } on Exception {
      return Left(
        UnknownFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> signInGoogle() async {
    try {
      return Right(
        await _authDatasource.signInGoogle(),
      );
    } on BadRequestException {
      return Left(
        GoogleSignInFailure(),
      );
    } on UnauthorizedException {
      return Left(
        GoogleSignInFailure(),
      );
    } on InternalServerErrorException {
      return Left(
        InternalServerErrorFailure(),
      );
    } on Exception {
      return Left(
        UnknownFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, void>> recoveryUpdatePassword(
    String? phone,
    String? email,
    String password,
    String confirmPassword,
  ) async {
    try {
      return Right(
        await _authDatasource.recoveryUpdatePassword(
            phone, email, password, confirmPassword),
      );
    } on UnprocessableContentException {
      return Left(
        PasswordWasUsedBeforeFailure(),
      );
    } catch (exception) {
      return Left(
        UnknownFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, void>> updateUserOptionalFlow(
      Uint8List? avatar, String? city, String? bio) async {
    try {
      return Right(
        await _authDatasource.updateUserOptionalFlow(avatar, city, bio),
      );
    } on NotFoundException {
      return Left(
        UserNotFoundFailure(),
      );
    } catch (exception) {
      return Left(
        UnknownFailure(),
      );
    }
  }
}
