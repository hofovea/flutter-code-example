import 'package:dartz/dartz.dart';

import 'package:code_example/core/domain/failures/failures.dart';
import 'package:code_example/core/domain/usecase/usecase.dart';
import 'package:code_example/features/auth/domain/repositories/auth_repository.dart';

class SignInGoogle extends UseCase<bool, NoParams> {
  final AuthRepository _repository;

  SignInGoogle(this._repository);

  @override
  Future<Either<Failure, bool>> call(NoParams params) async {
    return await _repository.signInGoogle();
  }
}
