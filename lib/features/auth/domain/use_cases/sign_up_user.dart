import 'package:dartz/dartz.dart';
import 'package:code_example/core/domain/failures/failures.dart';
import 'package:code_example/core/domain/usecase/usecase.dart';
import 'package:code_example/features/auth/domain/repositories/auth_repository.dart';

class SignUpUser extends UseCase<void, UserEntityParams> {
  final AuthRepository _repository;

  SignUpUser(this._repository);

  @override
  Future<Either<Failure, void>> call(UserEntityParams params) async {
    return await _repository.signUpUser(params.user);
  }
}
