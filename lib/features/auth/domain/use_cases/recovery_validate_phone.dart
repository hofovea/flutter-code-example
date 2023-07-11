import 'package:dartz/dartz.dart';
import 'package:code_example/core/domain/failures/failures.dart';
import 'package:code_example/core/domain/usecase/usecase.dart';
import 'package:code_example/features/auth/domain/repositories/auth_repository.dart';

class RecoveryValidatePhone extends UseCase<void, SingleStringParams> {
  final AuthRepository _repository;

  RecoveryValidatePhone(this._repository);

  @override
  Future<Either<Failure, void>> call(SingleStringParams params) async {
    return await _repository.recoveryValidatePhone(params.value);
  }
}
