import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:code_example/core/domain/failures/failures.dart';
import 'package:code_example/core/domain/usecase/usecase.dart';
import 'package:code_example/features/auth/domain/use_cases/validate_phone.dart';
import 'package:code_example/di/di_container.dart' as di;

part 'phone_event.dart';

part 'phone_state.dart';

part 'phone_bloc.freezed.dart';

class PhoneBloc extends Bloc<PhoneEvent, PhoneState> {
  final ValidatePhone _validatePhone = di.serviceLocator<ValidatePhone>();

  PhoneBloc() : super(const PhoneState.initial()) {
    on<PhoneEvent>((event, emit) async {
      await event.when(
        trySubmitPhone: (phone) async {
          emit(const PhoneState.loading());

          final validationResult =
              await _validatePhone(SingleStringParams(phone));

          validationResult.fold(
            (failure) {
              switch (failure.runtimeType) {
                case AlreadyExistsFailure:
                  emit(const PhoneState.validationFailurePhoneExists());
                  break;
                case InvalidFormatFailure:
                  emit(const PhoneState.validationFailurePhoneIsNotValid());
                  break;
                default:
                  emit(const PhoneState.validationFailurePhoneUnknown());
              }
            },
            (result) {
              emit(PhoneState.validationPhoneSuccess(phone));
            },
          );
        },
        enableSubmit: () {
          emit(const PhoneState.enabledSubmit());
        },
        disableSubmit: () {
          emit(const PhoneState.disabledSubmit());
        },
      );
    });
  }
}
