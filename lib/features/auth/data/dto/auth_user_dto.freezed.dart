// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthUserDto _$AuthUserDtoFromJson(Map<String, dynamic> json) {
  return _AuthUserDto.fromJson(json);
}

/// @nodoc
mixin _$AuthUserDto {
  String? get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get nickName => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String get dateOfBirth => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthUserDtoCopyWith<AuthUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUserDtoCopyWith<$Res> {
  factory $AuthUserDtoCopyWith(
          AuthUserDto value, $Res Function(AuthUserDto) then) =
      _$AuthUserDtoCopyWithImpl<$Res, AuthUserDto>;
  @useResult
  $Res call(
      {String? email,
      String password,
      String nickName,
      String? phoneNumber,
      String dateOfBirth,
      String? fullName});
}

/// @nodoc
class _$AuthUserDtoCopyWithImpl<$Res, $Val extends AuthUserDto>
    implements $AuthUserDtoCopyWith<$Res> {
  _$AuthUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = null,
    Object? nickName = null,
    Object? phoneNumber = freezed,
    Object? dateOfBirth = null,
    Object? fullName = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthUserDtoCopyWith<$Res>
    implements $AuthUserDtoCopyWith<$Res> {
  factory _$$_AuthUserDtoCopyWith(
          _$_AuthUserDto value, $Res Function(_$_AuthUserDto) then) =
      __$$_AuthUserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? email,
      String password,
      String nickName,
      String? phoneNumber,
      String dateOfBirth,
      String? fullName});
}

/// @nodoc
class __$$_AuthUserDtoCopyWithImpl<$Res>
    extends _$AuthUserDtoCopyWithImpl<$Res, _$_AuthUserDto>
    implements _$$_AuthUserDtoCopyWith<$Res> {
  __$$_AuthUserDtoCopyWithImpl(
      _$_AuthUserDto _value, $Res Function(_$_AuthUserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = null,
    Object? nickName = null,
    Object? phoneNumber = freezed,
    Object? dateOfBirth = null,
    Object? fullName = freezed,
  }) {
    return _then(_$_AuthUserDto(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthUserDto extends _AuthUserDto {
  const _$_AuthUserDto(
      {required this.email,
      required this.password,
      required this.nickName,
      required this.phoneNumber,
      required this.dateOfBirth,
      this.fullName})
      : super._();

  factory _$_AuthUserDto.fromJson(Map<String, dynamic> json) =>
      _$$_AuthUserDtoFromJson(json);

  @override
  final String? email;
  @override
  final String password;
  @override
  final String nickName;
  @override
  final String? phoneNumber;
  @override
  final String dateOfBirth;
  @override
  final String? fullName;

  @override
  String toString() {
    return 'AuthUserDto(email: $email, password: $password, nickName: $nickName, phoneNumber: $phoneNumber, dateOfBirth: $dateOfBirth, fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthUserDto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password, nickName,
      phoneNumber, dateOfBirth, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthUserDtoCopyWith<_$_AuthUserDto> get copyWith =>
      __$$_AuthUserDtoCopyWithImpl<_$_AuthUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthUserDtoToJson(
      this,
    );
  }
}

abstract class _AuthUserDto extends AuthUserDto {
  const factory _AuthUserDto(
      {required final String? email,
      required final String password,
      required final String nickName,
      required final String? phoneNumber,
      required final String dateOfBirth,
      final String? fullName}) = _$_AuthUserDto;
  const _AuthUserDto._() : super._();

  factory _AuthUserDto.fromJson(Map<String, dynamic> json) =
      _$_AuthUserDto.fromJson;

  @override
  String? get email;
  @override
  String get password;
  @override
  String get nickName;
  @override
  String? get phoneNumber;
  @override
  String get dateOfBirth;
  @override
  String? get fullName;
  @override
  @JsonKey(ignore: true)
  _$$_AuthUserDtoCopyWith<_$_AuthUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
