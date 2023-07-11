import 'package:camera/camera.dart';
import 'package:dio/dio.dart';
import 'package:code_example/core/data/networking/authorized_dio/authorized_dio.dart';
import 'package:code_example/features/auth/domain/use_cases/recovery_update_password.dart';
import 'package:code_example/features/auth/domain/use_cases/recovery_validate_email.dart';
import 'package:code_example/features/auth/domain/use_cases/recovery_validate_phone.dart';
import 'package:code_example/features/auth/domain/use_cases/update_user_optional_flow.dart';
import 'package:get_it/get_it.dart';

import 'package:code_example/features/auth/domain/services/timer_service.dart';
import 'package:code_example/features/auth/domain/use_cases/sign_up_user.dart';
import 'package:code_example/core/data/networking/networking_constants.dart';
import 'package:code_example/features/auth/data/datasources/auth_datasource.dart';
import 'package:code_example/features/auth/data/datasources/datasource_impls/api_auth_datasource.dart';
import 'package:code_example/features/auth/data/datasources/networking/auth_api.dart';
import 'package:code_example/features/auth/data/repository_impls/auth_repository_impl.dart';
import 'package:code_example/features/auth/domain/repositories/auth_repository.dart';
import 'package:code_example/features/auth/domain/use_cases/attempt_access.dart';
import 'package:code_example/features/auth/domain/use_cases/validate_email.dart';
import 'package:code_example/features/auth/domain/use_cases/request_verification_code.dart';
import 'package:code_example/features/auth/domain/use_cases/validate_nickname.dart';
import 'package:code_example/features/auth/domain/use_cases/validate_phone.dart';
import 'package:code_example/features/auth/domain/use_cases/validate_verification_code.dart';
import 'package:code_example/features/auth/domain/use_cases/sign_in_facebook.dart';
import 'package:code_example/features/auth/domain/use_cases/sign_in_google.dart';
import 'package:code_example/features/auth/domain/use_cases/sign_in_user.dart';
import 'package:code_example/features/auth/presentation/screens/verification_code_screen/bloc/verification_code_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final serviceLocator = GetIt.instance;

void init() {
  serviceLocator.registerLazySingleton(
    () => Dio(
      BaseOptions(
        baseUrl: NetworkingConstants.baseAuthUrl,
      ),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => AuthorizedDio(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton<AuthApi>(
    () => AuthApiImpl(
      serviceLocator(),
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => TimerService(),
  );

  serviceLocator.registerLazySingleton(
    () => VerificationCodeBloc(
      serviceLocator(),
      serviceLocator(),
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => AttemptAccess(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => SignInFacebook(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => SignInGoogle(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => ValidatePhone(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => RecoveryValidateEmail(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => RecoveryValidatePhone(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => RecoveryUpdatePassword(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => UpdateUserOptionalFlow(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => ValidateEmail(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => ValidateNickname(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => RequestVerificationCode(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => ValidateVerificationCode(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => SignUpUser(
      serviceLocator(),
    ),
  );
  serviceLocator.registerLazySingleton(
    () => SignInUser(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton<AuthDatasource>(
    () => ApiAuthDatasourceImpl(
      serviceLocator(),
      serviceLocator(),
    ),
  );
  
  serviceLocator.registerSingletonAsync<List<CameraDescription>>(() async {
    return await availableCameras();
  });

  serviceLocator.registerLazySingleton(
    () => const FlutterSecureStorage(
      aOptions: AndroidOptions(encryptedSharedPreferences: true),
    ),
  );
}
