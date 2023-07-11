import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:code_example/core/domain/failures/failures.dart';
import 'package:code_example/core/domain/usecase/usecase.dart';
import 'package:code_example/features/auth/domain/use_cases/update_user_optional_flow.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:code_example/di/di_container.dart' as di;

part 'authorized_flow_event.dart';

part 'authorized_flow_state.dart';

part 'authorized_flow_bloc.freezed.dart';

class AuthorizedFlowBloc extends Bloc<AuthorizedFlowEvent, AuthorizedFlowState> {
  final UpdateUserOptionalFlow _updateUser = di.serviceLocator<UpdateUserOptionalFlow>();

  AuthorizedFlowBloc() : super(const AuthorizedFlowState.initial()) {
    on<AuthorizedFlowEvent>(
      (event, emit) async {
        await event.when(
          fetchCurrentUser: () async {},
          getCurrentUser: () async {},
          finishOptionalSetupFlow: (Uint8List? avatar, String? city, String? bio) async {
            final result = await _updateUser(
              ThreeParamsOptionalFlow(avatar, city, bio),
            );
            result.fold(
              (failure) {
                switch (failure.runtimeType) {
                  case UserNotFoundFailure:
                    emit(
                      const AuthorizedFlowState.optionalSetupUserNotFoundFailure(),
                    );
                    break;
                  default:
                    emit(
                      const AuthorizedFlowState.optionalSetupFailure(),
                    );
                }
              },
              (result) {
                emit(
                  const AuthorizedFlowState.optionalSetupSuccess(),
                );
              },
            );
          },
          signOut: () async {
            emit(const AuthorizedFlowState.signedOut());
          },
        );
      },
    );
  }
}
