import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {}

class UnknownFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class UnauthorizedFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class InvalidFormatFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class InvalidEmailFormatFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class InvalidPasswordFormatFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class InvalidNicknameFormatFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class AlreadyExistsFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class TooManyRequestsFailure extends Failure {
  final String? tryAfterMillis;

  TooManyRequestsFailure({this.tryAfterMillis});
  @override
  List<Object?> get props => [tryAfterMillis];
}

class EmailAlreadyRegisteredFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class PhoneAlreadyRegisteredFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class NicknameAlreadyTakenFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class MissingEmailFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class MissingPhoneFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class MissingNicknameFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class MissingPasswordFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class MissingBirthdayFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class InternalServerErrorFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class FacebookSignInFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class GoogleSignInFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class AccountNotExistsFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class PasswordWasUsedBeforeFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class UserNotFoundFailure extends Failure {
  @override
  List<Object?> get props => [];
}
