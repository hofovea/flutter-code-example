abstract class CoreException implements Exception {
  final String? message;

  CoreException([this.message]);
}

class UnknownException extends CoreException {
  UnknownException([String? message]) : super(message);
}

class AlreadyExistsException extends CoreException {
  AlreadyExistsException([String? message]) : super(message);
}

class GoogleSignInException extends CoreException {
  GoogleSignInException([String? message]) : super(message);
}

class FacebookSignInException extends CoreException {
  FacebookSignInException([String? message]) : super(message);
}

//Network Exceptions:
class BadRequestException extends CoreException {
  BadRequestException([String? message]) : super(message);
}

class InternalServerErrorException extends CoreException {
  InternalServerErrorException([String? message]) : super(message);
}

class ConflictException extends CoreException {
  ConflictException([String? message]) : super(message);
}

class UnauthorizedException extends CoreException {
  UnauthorizedException([String? message]) : super(message);
}

class NotFoundException extends CoreException {
  NotFoundException([String? message]) : super(message);
}

class UnprocessableContentException extends CoreException {
  UnprocessableContentException([String? message]) : super(message);
}

class NoInternetConnectionException extends CoreException {
  NoInternetConnectionException([String? message]) : super(message);
}

class DeadlineExceededException extends CoreException {
  DeadlineExceededException([String? message]) : super(message);
}

class TooManyRequestsException extends CoreException {
  final String? tryAfterMillis;
  TooManyRequestsException({String? message, this.tryAfterMillis})
      : super(message);
}

class OtherException extends CoreException {
  OtherException([String? message]) : super(message);
}
