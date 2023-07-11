import 'dart:typed_data';

import 'package:bloc/bloc.dart';

import 'package:code_example/core/domain/failures/failures.dart';
import 'package:code_example/core/domain/usecase/usecase.dart';
import 'package:code_example/features/auth/domain/use_cases/sign_in_facebook.dart';
import 'package:code_example/features/auth/domain/use_cases/sign_in_google.dart';
import 'package:code_example/features/auth/domain/use_cases/update_user_optional_flow.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:code_example/di/di_container.dart' as di;

part 'unauthorized_flow_event.dart';

part 'unauthorized_flow_state.dart';

part 'unauthorized_flow_bloc.freezed.dart';

class UnauthorizedFlowBloc
    extends Bloc<UnauthorizedFlowEvent, UnauthorizedFlowState> {
  final SignInFacebook _signInFacebook = di.serviceLocator<SignInFacebook>();
  final SignInGoogle _signInGoogle = di.serviceLocator<SignInGoogle>();
  final UpdateUserOptionalFlow _updateUser =
      di.serviceLocator<UpdateUserOptionalFlow>();

  UnauthorizedFlowBloc() : super(const UnauthorizedFlowState.initial()) {
    on<UnauthorizedFlowEvent>(
      (event, emit) async {
        await event.when(
          signInFacebook: () async {
            emit(
              const UnauthorizedFlowState.initial(),
            );
            var result = await _signInFacebook(NoParams());
            result.fold(
              (failure) {
                switch (failure.runtimeType) {
                  case FacebookSignInFailure:
                    emit(
                      const UnauthorizedFlowState.invalidFacebookSignIn(),
                    );
                    break;
                  case InternalServerErrorFailure:
                    emit(
                      const UnauthorizedFlowState.serverFailure(),
                    );
                    break;
                  default:
                    emit(
                      const UnauthorizedFlowState.unknownFailure(),
                    );
                }
              },
              (result) {
                emit(
                  UnauthorizedFlowState.success(result),
                );
              },
            );
          },
          signInGoogle: () async {
            emit(
              const UnauthorizedFlowState.initial(),
            );
            var result = await _signInGoogle(NoParams());
            result.fold(
              (failure) {
                switch (failure.runtimeType) {
                  case GoogleSignInFailure:
                    emit(
                      const UnauthorizedFlowState.invalidGoogleSignIn(),
                    );
                    break;
                  case InternalServerErrorFailure:
                    emit(
                      const UnauthorizedFlowState.serverFailure(),
                    );
                    break;
                  default:
                    emit(
                      const UnauthorizedFlowState.unknownFailure(),
                    );
                }
              },
              (result) {
                emit(
                  UnauthorizedFlowState.success(result),
                );
              },
            );
          },
          finishOptionalSetupFlow:
              (Uint8List? avatar, String? city, String? bio) async {
            final result = await _updateUser(
              ThreeParamsOptionalFlow(avatar, city, bio),
            );
            result.fold(
              (failure) {
                switch (failure.runtimeType) {
                  case UserNotFoundFailure:
                    emit(
                      const UnauthorizedFlowState
                          .optionalSetupUserNotFoundFailure(),
                    );
                    break;
                  default:
                    emit(
                      const UnauthorizedFlowState.optionalSetupFailure(),
                    );
                }
              },
              (result) {
                emit(
                  const UnauthorizedFlowState.optionalSetupSuccess(),
                );
              },
            );
          },
          signIn: () {
            emit(
              const UnauthorizedFlowState.success(false),
            );
          },
        );
      },
    );
  }
}
