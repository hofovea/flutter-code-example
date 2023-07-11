import 'package:dartz/dartz.dart';
import 'package:code_example/core/domain/failures/failures.dart';
import 'package:code_example/core/domain/usecase/usecase.dart';
import 'package:code_example/features/auth/domain/repositories/auth_repository.dart';

class AttemptAccess extends UseCase<void, NoParams> {
  final AuthRepository _repository;

  AttemptAccess(this._repository);

  @override
  Future<Either<Failure, void>> call(NoParams params) async {
    return await _repository.attemptAccess();
  }
}
