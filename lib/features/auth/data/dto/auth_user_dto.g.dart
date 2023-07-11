// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthUserDto _$$_AuthUserDtoFromJson(Map<String, dynamic> json) =>
    _$_AuthUserDto(
      email: json['email'] as String?,
      password: json['password'] as String,
      nickName: json['nickName'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      dateOfBirth: json['dateOfBirth'] as String,
      fullName: json['fullName'] as String?,
    );

Map<String, dynamic> _$$_AuthUserDtoToJson(_$_AuthUserDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'nickName': instance.nickName,
      'phoneNumber': instance.phoneNumber,
      'dateOfBirth': instance.dateOfBirth,
      'fullName': instance.fullName,
    };
