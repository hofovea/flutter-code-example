import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:code_example/core/domain/usecase/usecase.dart';
import 'package:code_example/features/auth/domain/use_cases/validate_nickname.dart';
import 'package:code_example/di/di_container.dart' as di;
import 'package:code_example/core/domain/failures/failures.dart';

part 'nickname_event.dart';

part 'nickname_state.dart';

part 'nickname_bloc.freezed.dart';

class NicknameBloc extends Bloc<NicknameEvent, NicknameState> {
  final ValidateNickname _validateNickname =
      di.serviceLocator<ValidateNickname>();

  NicknameBloc() : super(const NicknameState.initial()) {
    on<NicknameEvent>(
      (event, emit) async {
        await event.when(
          trySubmit: (nickname) async {
            emit(
              const NicknameState.loading(),
            );
            final validationResult = await _validateNickname(
              SingleStringParams(nickname),
            );
            validationResult.fold(
              (failure) {
                switch (failure.runtimeType) {
                  case AlreadyExistsFailure:
                    emit(const NicknameState.validationFailureNicknameExists());
                    break;
                  default:
                    emit(const NicknameState.validationFailureUnknown());
                }
              },
              (result) {
                emit(NicknameState.validationSuccess(nickname));
              },
            );
          },
          enableSubmit: () {
            emit(const NicknameState.enabledSubmit());
          },
          disableSubmit: () {
            emit(const NicknameState.disabledSubmit());
          },
        );
      },
    );
  }
}
