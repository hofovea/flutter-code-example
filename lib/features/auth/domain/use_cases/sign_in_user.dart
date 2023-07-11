import 'package:dartz/dartz.dart';
import 'package:code_example/core/domain/failures/failures.dart';
import 'package:code_example/core/domain/usecase/usecase.dart';
import 'package:code_example/features/auth/domain/repositories/auth_repository.dart';

class SignInUser extends UseCase<void, TwoStringParams> {
  final AuthRepository _repository;

  SignInUser(this._repository);

  @override
  Future<Either<Failure, void>> call(TwoStringParams params) async {
    return await _repository.signInUser(params.firstValue, params.secondValue);
  }
}
