import 'package:dio/dio.dart';
import 'package:code_example/core/data/exceptions/exceptions.dart';

class ApiErrorInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioErrorType.connectTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        throw DeadlineExceededException();
      case DioErrorType.response:
        switch (err.response?.statusCode) {
          case 400:
            throw BadRequestException();
          case 401:
            throw UnauthorizedException();
          case 404:
            throw NotFoundException();
          case 409:
            throw ConflictException();
          case 500:
            throw InternalServerErrorException();
        }
        break;
      case DioErrorType.cancel:
      case DioErrorType.other:
        throw OtherException();
    }
  }
}
