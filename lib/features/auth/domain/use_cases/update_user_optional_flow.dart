import 'package:dartz/dartz.dart';
import 'package:code_example/core/domain/failures/failures.dart';
import 'package:code_example/core/domain/usecase/usecase.dart';
import 'package:code_example/features/auth/domain/repositories/auth_repository.dart';

class UpdateUserOptionalFlow extends UseCase<void, ThreeParamsOptionalFlow> {
  final AuthRepository _repository;

  UpdateUserOptionalFlow(this._repository);

  @override
  Future<Either<Failure, void>> call(ThreeParamsOptionalFlow params) async {
    return await _repository.updateUserOptionalFlow(
        params.avatar, params.city, params.bio);
  }
}
