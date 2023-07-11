import 'package:code_example/features/auth/domain/entities/auth_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user_dto.freezed.dart';

part 'auth_user_dto.g.dart';

@freezed
class AuthUserDto with _$AuthUserDto {
  const AuthUserDto._();

  const factory AuthUserDto({
    required String? email,
    required String password,
    required String nickName,
    required String? phoneNumber,
    required String dateOfBirth,
    String? fullName,
  }) = _AuthUserDto;

  factory AuthUserDto.fromUser(AuthUser user) => AuthUserDto(
        email: user.email,
        password: user.password,
        phoneNumber: user.phone,
        nickName: user.nickname,
        fullName: user.fullName,
        dateOfBirth: user.birthday.toIso8601String(),
      );

  factory AuthUserDto.fromJson(Map<String, dynamic> json) =>
      _$AuthUserDtoFromJson(json);
}
