import 'package:dio/dio.dart';
import 'package:code_example/core/data/exceptions/exceptions.dart';

extension DioErrorMapper on DioError {
  static const String _messageKey = 'message';

  Exception mapToCustomException() {
    final String? message;
    if (response?.data != null && response?.data[_messageKey] is String) {
      message = response?.data[_messageKey];
    } else {
      message = null;
    }
    switch (type) {
      case DioErrorType.connectTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        return DeadlineExceededException();
      case DioErrorType.response:
        switch (response?.statusCode) {
          case 400:
            return BadRequestException(message);
          case 401:
            return UnauthorizedException(message);
          case 404:
            return NotFoundException(message);
          case 409:
            return ConflictException(message);
          case 422:
            return UnprocessableContentException(message);
          case 429:
            const tryAfterKey = 'tryAfter';
            final messageObject =
                response?.data != null ? response?.data[_messageKey] : null;
            String? message = messageObject != null
                ? messageObject[_messageKey].toString()
                : null;
            String? tryAfterMillisString = messageObject != null
                ? messageObject[tryAfterKey].toString()
                : null;
            return TooManyRequestsException(
                message: message, tryAfterMillis: tryAfterMillisString);
          case 500:
            return InternalServerErrorException(message);
        }
        break;
      case DioErrorType.cancel:
      case DioErrorType.other:
        return OtherException(message);
    }
    return OtherException(message);
  }
}
