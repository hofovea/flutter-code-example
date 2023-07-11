import 'package:dartz/dartz.dart';
import 'package:code_example/core/domain/failures/failures.dart';
import 'package:code_example/core/domain/usecase/usecase.dart';
import 'package:code_example/features/auth/domain/repositories/auth_repository.dart';

class RecoveryUpdatePassword extends UseCase<void, FourStringParams> {
  final AuthRepository _repository;

  RecoveryUpdatePassword(this._repository);

  @override
  Future<Either<Failure, void>> call(FourStringParams params) async {
    return await _repository.recoveryUpdatePassword(
      params.firstValue,
      params.secondValue,
      params.thirdValue,
      params.fourthValue,
    );
  }
}
