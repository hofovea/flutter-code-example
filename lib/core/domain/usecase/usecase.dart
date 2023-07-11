import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:code_example/core/domain/failures/failures.dart';
import 'package:code_example/features/auth/domain/entities/auth_user.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}

class SingleStringParams extends Equatable {
  final String value;

  const SingleStringParams(this.value);

  @override
  List<Object?> get props => [value];
}

class TwoStringParams extends Equatable {
  final String firstValue;
  final String secondValue;

  const TwoStringParams(this.firstValue, this.secondValue);

  @override
  List<Object?> get props => [firstValue, secondValue];
}

class ThreeParamsOptionalFlow extends Equatable {
  final Uint8List? avatar;
  final String? city;
  final String? bio;

  const ThreeParamsOptionalFlow(this.avatar, this.city, this.bio);

  @override
  List<Object?> get props => [avatar, city, bio];
}

class FourStringParams extends Equatable {
  final String? firstValue;
  final String? secondValue;
  final String thirdValue;
  final String fourthValue;

  const FourStringParams(
    this.firstValue,
    this.secondValue,
    this.thirdValue,
    this.fourthValue,
  );

  @override
  List<Object?> get props => [firstValue, secondValue, thirdValue, fourthValue];
}

class UpdateUserParams extends Equatable {
  final Uint8List? avatar;
  final String? fullName;
  final String nickname;
  final String? city;
  final String? bio;

  const UpdateUserParams(
    this.avatar,
    this.fullName,
    this.nickname,
    this.city,
    this.bio,
  );

  @override
  List<Object?> get props => [avatar, fullName, nickname, city, bio];
}

class UserEntityParams extends Equatable {
  final AuthUser user;

  const UserEntityParams(this.user);

  @override
  List<Object?> get props => [user];
}
