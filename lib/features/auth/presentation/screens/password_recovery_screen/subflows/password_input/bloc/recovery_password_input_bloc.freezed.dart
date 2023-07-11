// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recovery_password_input_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecoveryPasswordInputEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enableSubmit,
    required TResult Function() disableSubmit,
    required TResult Function(String? email, String? phone, String password,
            String confirmPassword)
        submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enableSubmit,
    TResult? Function()? disableSubmit,
    TResult? Function(String? email, String? phone, String password,
            String confirmPassword)?
        submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enableSubmit,
    TResult Function()? disableSubmit,
    TResult Function(String? email, String? phone, String password,
            String confirmPassword)?
        submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnableSubmit value) enableSubmit,
    required TResult Function(_DisableSubmit value) disableSubmit,
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnableSubmit value)? enableSubmit,
    TResult? Function(_DisableSubmit value)? disableSubmit,
    TResult? Function(_Submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnableSubmit value)? enableSubmit,
    TResult Function(_DisableSubmit value)? disableSubmit,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecoveryPasswordInputEventCopyWith<$Res> {
  factory $RecoveryPasswordInputEventCopyWith(RecoveryPasswordInputEvent value,
          $Res Function(RecoveryPasswordInputEvent) then) =
      _$RecoveryPasswordInputEventCopyWithImpl<$Res,
          RecoveryPasswordInputEvent>;
}

/// @nodoc
class _$RecoveryPasswordInputEventCopyWithImpl<$Res,
        $Val extends RecoveryPasswordInputEvent>
    implements $RecoveryPasswordInputEventCopyWith<$Res> {
  _$RecoveryPasswordInputEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EnableSubmitCopyWith<$Res> {
  factory _$$_EnableSubmitCopyWith(
          _$_EnableSubmit value, $Res Function(_$_EnableSubmit) then) =
      __$$_EnableSubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EnableSubmitCopyWithImpl<$Res>
    extends _$RecoveryPasswordInputEventCopyWithImpl<$Res, _$_EnableSubmit>
    implements _$$_EnableSubmitCopyWith<$Res> {
  __$$_EnableSubmitCopyWithImpl(
      _$_EnableSubmit _value, $Res Function(_$_EnableSubmit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EnableSubmit implements _EnableSubmit {
  const _$_EnableSubmit();

  @override
  String toString() {
    return 'RecoveryPasswordInputEvent.enableSubmit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EnableSubmit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enableSubmit,
    required TResult Function() disableSubmit,
    required TResult Function(String? email, String? phone, String password,
            String confirmPassword)
        submit,
  }) {
    return enableSubmit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enableSubmit,
    TResult? Function()? disableSubmit,
    TResult? Function(String? email, String? phone, String password,
            String confirmPassword)?
        submit,
  }) {
    return enableSubmit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enableSubmit,
    TResult Function()? disableSubmit,
    TResult Function(String? email, String? phone, String password,
            String confirmPassword)?
        submit,
    required TResult orElse(),
  }) {
    if (enableSubmit != null) {
      return enableSubmit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnableSubmit value) enableSubmit,
    required TResult Function(_DisableSubmit value) disableSubmit,
    required TResult Function(_Submit value) submit,
  }) {
    return enableSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnableSubmit value)? enableSubmit,
    TResult? Function(_DisableSubmit value)? disableSubmit,
    TResult? Function(_Submit value)? submit,
  }) {
    return enableSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnableSubmit value)? enableSubmit,
    TResult Function(_DisableSubmit value)? disableSubmit,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (enableSubmit != null) {
      return enableSubmit(this);
    }
    return orElse();
  }
}

abstract class _EnableSubmit implements RecoveryPasswordInputEvent {
  const factory _EnableSubmit() = _$_EnableSubmit;
}

/// @nodoc
abstract class _$$_DisableSubmitCopyWith<$Res> {
  factory _$$_DisableSubmitCopyWith(
          _$_DisableSubmit value, $Res Function(_$_DisableSubmit) then) =
      __$$_DisableSubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DisableSubmitCopyWithImpl<$Res>
    extends _$RecoveryPasswordInputEventCopyWithImpl<$Res, _$_DisableSubmit>
    implements _$$_DisableSubmitCopyWith<$Res> {
  __$$_DisableSubmitCopyWithImpl(
      _$_DisableSubmit _value, $Res Function(_$_DisableSubmit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DisableSubmit implements _DisableSubmit {
  const _$_DisableSubmit();

  @override
  String toString() {
    return 'RecoveryPasswordInputEvent.disableSubmit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DisableSubmit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enableSubmit,
    required TResult Function() disableSubmit,
    required TResult Function(String? email, String? phone, String password,
            String confirmPassword)
        submit,
  }) {
    return disableSubmit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enableSubmit,
    TResult? Function()? disableSubmit,
    TResult? Function(String? email, String? phone, String password,
            String confirmPassword)?
        submit,
  }) {
    return disableSubmit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enableSubmit,
    TResult Function()? disableSubmit,
    TResult Function(String? email, String? phone, String password,
            String confirmPassword)?
        submit,
    required TResult orElse(),
  }) {
    if (disableSubmit != null) {
      return disableSubmit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnableSubmit value) enableSubmit,
    required TResult Function(_DisableSubmit value) disableSubmit,
    required TResult Function(_Submit value) submit,
  }) {
    return disableSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnableSubmit value)? enableSubmit,
    TResult? Function(_DisableSubmit value)? disableSubmit,
    TResult? Function(_Submit value)? submit,
  }) {
    return disableSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnableSubmit value)? enableSubmit,
    TResult Function(_DisableSubmit value)? disableSubmit,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (disableSubmit != null) {
      return disableSubmit(this);
    }
    return orElse();
  }
}

abstract class _DisableSubmit implements RecoveryPasswordInputEvent {
  const factory _DisableSubmit() = _$_DisableSubmit;
}

/// @nodoc
abstract class _$$_SubmitCopyWith<$Res> {
  factory _$$_SubmitCopyWith(_$_Submit value, $Res Function(_$_Submit) then) =
      __$$_SubmitCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? email, String? phone, String password, String confirmPassword});
}

/// @nodoc
class __$$_SubmitCopyWithImpl<$Res>
    extends _$RecoveryPasswordInputEventCopyWithImpl<$Res, _$_Submit>
    implements _$$_SubmitCopyWith<$Res> {
  __$$_SubmitCopyWithImpl(_$_Submit _value, $Res Function(_$_Submit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = null,
    Object? confirmPassword = null,
  }) {
    return _then(_$_Submit(
      freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Submit implements _Submit {
  const _$_Submit(this.email, this.phone, this.password, this.confirmPassword);

  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String password;
  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'RecoveryPasswordInputEvent.submit(email: $email, phone: $phone, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Submit &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, phone, password, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubmitCopyWith<_$_Submit> get copyWith =>
      __$$_SubmitCopyWithImpl<_$_Submit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enableSubmit,
    required TResult Function() disableSubmit,
    required TResult Function(String? email, String? phone, String password,
            String confirmPassword)
        submit,
  }) {
    return submit(email, phone, password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enableSubmit,
    TResult? Function()? disableSubmit,
    TResult? Function(String? email, String? phone, String password,
            String confirmPassword)?
        submit,
  }) {
    return submit?.call(email, phone, password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enableSubmit,
    TResult Function()? disableSubmit,
    TResult Function(String? email, String? phone, String password,
            String confirmPassword)?
        submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(email, phone, password, confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnableSubmit value) enableSubmit,
    required TResult Function(_DisableSubmit value) disableSubmit,
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnableSubmit value)? enableSubmit,
    TResult? Function(_DisableSubmit value)? disableSubmit,
    TResult? Function(_Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnableSubmit value)? enableSubmit,
    TResult Function(_DisableSubmit value)? disableSubmit,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements RecoveryPasswordInputEvent {
  const factory _Submit(final String? email, final String? phone,
      final String password, final String confirmPassword) = _$_Submit;

  String? get email;
  String? get phone;
  String get password;
  String get confirmPassword;
  @JsonKey(ignore: true)
  _$$_SubmitCopyWith<_$_Submit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecoveryPasswordInputState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() enabledSubmit,
    required TResult Function() disabledSubmit,
    required TResult Function() recoverySuccess,
    required TResult Function() recoveryFailure,
    required TResult Function() passwordUsedBeforeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function()? recoverySuccess,
    TResult? Function()? recoveryFailure,
    TResult? Function()? passwordUsedBeforeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function()? recoverySuccess,
    TResult Function()? recoveryFailure,
    TResult Function()? passwordUsedBeforeFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_EnabledSubmit value) enabledSubmit,
    required TResult Function(_DisabledSubmit value) disabledSubmit,
    required TResult Function(_RecoverySuccess value) recoverySuccess,
    required TResult Function(_RecoveryFailure value) recoveryFailure,
    required TResult Function(_PasswordUsedBeforeFailure value)
        passwordUsedBeforeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_RecoverySuccess value)? recoverySuccess,
    TResult? Function(_RecoveryFailure value)? recoveryFailure,
    TResult? Function(_PasswordUsedBeforeFailure value)?
        passwordUsedBeforeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_RecoverySuccess value)? recoverySuccess,
    TResult Function(_RecoveryFailure value)? recoveryFailure,
    TResult Function(_PasswordUsedBeforeFailure value)?
        passwordUsedBeforeFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecoveryPasswordInputStateCopyWith<$Res> {
  factory $RecoveryPasswordInputStateCopyWith(RecoveryPasswordInputState value,
          $Res Function(RecoveryPasswordInputState) then) =
      _$RecoveryPasswordInputStateCopyWithImpl<$Res,
          RecoveryPasswordInputState>;
}

/// @nodoc
class _$RecoveryPasswordInputStateCopyWithImpl<$Res,
        $Val extends RecoveryPasswordInputState>
    implements $RecoveryPasswordInputStateCopyWith<$Res> {
  _$RecoveryPasswordInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$RecoveryPasswordInputStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'RecoveryPasswordInputState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() enabledSubmit,
    required TResult Function() disabledSubmit,
    required TResult Function() recoverySuccess,
    required TResult Function() recoveryFailure,
    required TResult Function() passwordUsedBeforeFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function()? recoverySuccess,
    TResult? Function()? recoveryFailure,
    TResult? Function()? passwordUsedBeforeFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function()? recoverySuccess,
    TResult Function()? recoveryFailure,
    TResult Function()? passwordUsedBeforeFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_EnabledSubmit value) enabledSubmit,
    required TResult Function(_DisabledSubmit value) disabledSubmit,
    required TResult Function(_RecoverySuccess value) recoverySuccess,
    required TResult Function(_RecoveryFailure value) recoveryFailure,
    required TResult Function(_PasswordUsedBeforeFailure value)
        passwordUsedBeforeFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_RecoverySuccess value)? recoverySuccess,
    TResult? Function(_RecoveryFailure value)? recoveryFailure,
    TResult? Function(_PasswordUsedBeforeFailure value)?
        passwordUsedBeforeFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_RecoverySuccess value)? recoverySuccess,
    TResult Function(_RecoveryFailure value)? recoveryFailure,
    TResult Function(_PasswordUsedBeforeFailure value)?
        passwordUsedBeforeFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RecoveryPasswordInputState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$RecoveryPasswordInputStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'RecoveryPasswordInputState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() enabledSubmit,
    required TResult Function() disabledSubmit,
    required TResult Function() recoverySuccess,
    required TResult Function() recoveryFailure,
    required TResult Function() passwordUsedBeforeFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function()? recoverySuccess,
    TResult? Function()? recoveryFailure,
    TResult? Function()? passwordUsedBeforeFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function()? recoverySuccess,
    TResult Function()? recoveryFailure,
    TResult Function()? passwordUsedBeforeFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_EnabledSubmit value) enabledSubmit,
    required TResult Function(_DisabledSubmit value) disabledSubmit,
    required TResult Function(_RecoverySuccess value) recoverySuccess,
    required TResult Function(_RecoveryFailure value) recoveryFailure,
    required TResult Function(_PasswordUsedBeforeFailure value)
        passwordUsedBeforeFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_RecoverySuccess value)? recoverySuccess,
    TResult? Function(_RecoveryFailure value)? recoveryFailure,
    TResult? Function(_PasswordUsedBeforeFailure value)?
        passwordUsedBeforeFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_RecoverySuccess value)? recoverySuccess,
    TResult Function(_RecoveryFailure value)? recoveryFailure,
    TResult Function(_PasswordUsedBeforeFailure value)?
        passwordUsedBeforeFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements RecoveryPasswordInputState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_EnabledSubmitCopyWith<$Res> {
  factory _$$_EnabledSubmitCopyWith(
          _$_EnabledSubmit value, $Res Function(_$_EnabledSubmit) then) =
      __$$_EnabledSubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EnabledSubmitCopyWithImpl<$Res>
    extends _$RecoveryPasswordInputStateCopyWithImpl<$Res, _$_EnabledSubmit>
    implements _$$_EnabledSubmitCopyWith<$Res> {
  __$$_EnabledSubmitCopyWithImpl(
      _$_EnabledSubmit _value, $Res Function(_$_EnabledSubmit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EnabledSubmit implements _EnabledSubmit {
  const _$_EnabledSubmit();

  @override
  String toString() {
    return 'RecoveryPasswordInputState.enabledSubmit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EnabledSubmit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() enabledSubmit,
    required TResult Function() disabledSubmit,
    required TResult Function() recoverySuccess,
    required TResult Function() recoveryFailure,
    required TResult Function() passwordUsedBeforeFailure,
  }) {
    return enabledSubmit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function()? recoverySuccess,
    TResult? Function()? recoveryFailure,
    TResult? Function()? passwordUsedBeforeFailure,
  }) {
    return enabledSubmit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function()? recoverySuccess,
    TResult Function()? recoveryFailure,
    TResult Function()? passwordUsedBeforeFailure,
    required TResult orElse(),
  }) {
    if (enabledSubmit != null) {
      return enabledSubmit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_EnabledSubmit value) enabledSubmit,
    required TResult Function(_DisabledSubmit value) disabledSubmit,
    required TResult Function(_RecoverySuccess value) recoverySuccess,
    required TResult Function(_RecoveryFailure value) recoveryFailure,
    required TResult Function(_PasswordUsedBeforeFailure value)
        passwordUsedBeforeFailure,
  }) {
    return enabledSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_RecoverySuccess value)? recoverySuccess,
    TResult? Function(_RecoveryFailure value)? recoveryFailure,
    TResult? Function(_PasswordUsedBeforeFailure value)?
        passwordUsedBeforeFailure,
  }) {
    return enabledSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_RecoverySuccess value)? recoverySuccess,
    TResult Function(_RecoveryFailure value)? recoveryFailure,
    TResult Function(_PasswordUsedBeforeFailure value)?
        passwordUsedBeforeFailure,
    required TResult orElse(),
  }) {
    if (enabledSubmit != null) {
      return enabledSubmit(this);
    }
    return orElse();
  }
}

abstract class _EnabledSubmit implements RecoveryPasswordInputState {
  const factory _EnabledSubmit() = _$_EnabledSubmit;
}

/// @nodoc
abstract class _$$_DisabledSubmitCopyWith<$Res> {
  factory _$$_DisabledSubmitCopyWith(
          _$_DisabledSubmit value, $Res Function(_$_DisabledSubmit) then) =
      __$$_DisabledSubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DisabledSubmitCopyWithImpl<$Res>
    extends _$RecoveryPasswordInputStateCopyWithImpl<$Res, _$_DisabledSubmit>
    implements _$$_DisabledSubmitCopyWith<$Res> {
  __$$_DisabledSubmitCopyWithImpl(
      _$_DisabledSubmit _value, $Res Function(_$_DisabledSubmit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DisabledSubmit implements _DisabledSubmit {
  const _$_DisabledSubmit();

  @override
  String toString() {
    return 'RecoveryPasswordInputState.disabledSubmit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DisabledSubmit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() enabledSubmit,
    required TResult Function() disabledSubmit,
    required TResult Function() recoverySuccess,
    required TResult Function() recoveryFailure,
    required TResult Function() passwordUsedBeforeFailure,
  }) {
    return disabledSubmit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function()? recoverySuccess,
    TResult? Function()? recoveryFailure,
    TResult? Function()? passwordUsedBeforeFailure,
  }) {
    return disabledSubmit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function()? recoverySuccess,
    TResult Function()? recoveryFailure,
    TResult Function()? passwordUsedBeforeFailure,
    required TResult orElse(),
  }) {
    if (disabledSubmit != null) {
      return disabledSubmit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_EnabledSubmit value) enabledSubmit,
    required TResult Function(_DisabledSubmit value) disabledSubmit,
    required TResult Function(_RecoverySuccess value) recoverySuccess,
    required TResult Function(_RecoveryFailure value) recoveryFailure,
    required TResult Function(_PasswordUsedBeforeFailure value)
        passwordUsedBeforeFailure,
  }) {
    return disabledSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_RecoverySuccess value)? recoverySuccess,
    TResult? Function(_RecoveryFailure value)? recoveryFailure,
    TResult? Function(_PasswordUsedBeforeFailure value)?
        passwordUsedBeforeFailure,
  }) {
    return disabledSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_RecoverySuccess value)? recoverySuccess,
    TResult Function(_RecoveryFailure value)? recoveryFailure,
    TResult Function(_PasswordUsedBeforeFailure value)?
        passwordUsedBeforeFailure,
    required TResult orElse(),
  }) {
    if (disabledSubmit != null) {
      return disabledSubmit(this);
    }
    return orElse();
  }
}

abstract class _DisabledSubmit implements RecoveryPasswordInputState {
  const factory _DisabledSubmit() = _$_DisabledSubmit;
}

/// @nodoc
abstract class _$$_RecoverySuccessCopyWith<$Res> {
  factory _$$_RecoverySuccessCopyWith(
          _$_RecoverySuccess value, $Res Function(_$_RecoverySuccess) then) =
      __$$_RecoverySuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RecoverySuccessCopyWithImpl<$Res>
    extends _$RecoveryPasswordInputStateCopyWithImpl<$Res, _$_RecoverySuccess>
    implements _$$_RecoverySuccessCopyWith<$Res> {
  __$$_RecoverySuccessCopyWithImpl(
      _$_RecoverySuccess _value, $Res Function(_$_RecoverySuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RecoverySuccess implements _RecoverySuccess {
  const _$_RecoverySuccess();

  @override
  String toString() {
    return 'RecoveryPasswordInputState.recoverySuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RecoverySuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() enabledSubmit,
    required TResult Function() disabledSubmit,
    required TResult Function() recoverySuccess,
    required TResult Function() recoveryFailure,
    required TResult Function() passwordUsedBeforeFailure,
  }) {
    return recoverySuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function()? recoverySuccess,
    TResult? Function()? recoveryFailure,
    TResult? Function()? passwordUsedBeforeFailure,
  }) {
    return recoverySuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function()? recoverySuccess,
    TResult Function()? recoveryFailure,
    TResult Function()? passwordUsedBeforeFailure,
    required TResult orElse(),
  }) {
    if (recoverySuccess != null) {
      return recoverySuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_EnabledSubmit value) enabledSubmit,
    required TResult Function(_DisabledSubmit value) disabledSubmit,
    required TResult Function(_RecoverySuccess value) recoverySuccess,
    required TResult Function(_RecoveryFailure value) recoveryFailure,
    required TResult Function(_PasswordUsedBeforeFailure value)
        passwordUsedBeforeFailure,
  }) {
    return recoverySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_RecoverySuccess value)? recoverySuccess,
    TResult? Function(_RecoveryFailure value)? recoveryFailure,
    TResult? Function(_PasswordUsedBeforeFailure value)?
        passwordUsedBeforeFailure,
  }) {
    return recoverySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_RecoverySuccess value)? recoverySuccess,
    TResult Function(_RecoveryFailure value)? recoveryFailure,
    TResult Function(_PasswordUsedBeforeFailure value)?
        passwordUsedBeforeFailure,
    required TResult orElse(),
  }) {
    if (recoverySuccess != null) {
      return recoverySuccess(this);
    }
    return orElse();
  }
}

abstract class _RecoverySuccess implements RecoveryPasswordInputState {
  const factory _RecoverySuccess() = _$_RecoverySuccess;
}

/// @nodoc
abstract class _$$_RecoveryFailureCopyWith<$Res> {
  factory _$$_RecoveryFailureCopyWith(
          _$_RecoveryFailure value, $Res Function(_$_RecoveryFailure) then) =
      __$$_RecoveryFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RecoveryFailureCopyWithImpl<$Res>
    extends _$RecoveryPasswordInputStateCopyWithImpl<$Res, _$_RecoveryFailure>
    implements _$$_RecoveryFailureCopyWith<$Res> {
  __$$_RecoveryFailureCopyWithImpl(
      _$_RecoveryFailure _value, $Res Function(_$_RecoveryFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RecoveryFailure implements _RecoveryFailure {
  const _$_RecoveryFailure();

  @override
  String toString() {
    return 'RecoveryPasswordInputState.recoveryFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RecoveryFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() enabledSubmit,
    required TResult Function() disabledSubmit,
    required TResult Function() recoverySuccess,
    required TResult Function() recoveryFailure,
    required TResult Function() passwordUsedBeforeFailure,
  }) {
    return recoveryFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function()? recoverySuccess,
    TResult? Function()? recoveryFailure,
    TResult? Function()? passwordUsedBeforeFailure,
  }) {
    return recoveryFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function()? recoverySuccess,
    TResult Function()? recoveryFailure,
    TResult Function()? passwordUsedBeforeFailure,
    required TResult orElse(),
  }) {
    if (recoveryFailure != null) {
      return recoveryFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_EnabledSubmit value) enabledSubmit,
    required TResult Function(_DisabledSubmit value) disabledSubmit,
    required TResult Function(_RecoverySuccess value) recoverySuccess,
    required TResult Function(_RecoveryFailure value) recoveryFailure,
    required TResult Function(_PasswordUsedBeforeFailure value)
        passwordUsedBeforeFailure,
  }) {
    return recoveryFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_RecoverySuccess value)? recoverySuccess,
    TResult? Function(_RecoveryFailure value)? recoveryFailure,
    TResult? Function(_PasswordUsedBeforeFailure value)?
        passwordUsedBeforeFailure,
  }) {
    return recoveryFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_RecoverySuccess value)? recoverySuccess,
    TResult Function(_RecoveryFailure value)? recoveryFailure,
    TResult Function(_PasswordUsedBeforeFailure value)?
        passwordUsedBeforeFailure,
    required TResult orElse(),
  }) {
    if (recoveryFailure != null) {
      return recoveryFailure(this);
    }
    return orElse();
  }
}

abstract class _RecoveryFailure implements RecoveryPasswordInputState {
  const factory _RecoveryFailure() = _$_RecoveryFailure;
}

/// @nodoc
abstract class _$$_PasswordUsedBeforeFailureCopyWith<$Res> {
  factory _$$_PasswordUsedBeforeFailureCopyWith(
          _$_PasswordUsedBeforeFailure value,
          $Res Function(_$_PasswordUsedBeforeFailure) then) =
      __$$_PasswordUsedBeforeFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PasswordUsedBeforeFailureCopyWithImpl<$Res>
    extends _$RecoveryPasswordInputStateCopyWithImpl<$Res,
        _$_PasswordUsedBeforeFailure>
    implements _$$_PasswordUsedBeforeFailureCopyWith<$Res> {
  __$$_PasswordUsedBeforeFailureCopyWithImpl(
      _$_PasswordUsedBeforeFailure _value,
      $Res Function(_$_PasswordUsedBeforeFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PasswordUsedBeforeFailure implements _PasswordUsedBeforeFailure {
  const _$_PasswordUsedBeforeFailure();

  @override
  String toString() {
    return 'RecoveryPasswordInputState.passwordUsedBeforeFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordUsedBeforeFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() enabledSubmit,
    required TResult Function() disabledSubmit,
    required TResult Function() recoverySuccess,
    required TResult Function() recoveryFailure,
    required TResult Function() passwordUsedBeforeFailure,
  }) {
    return passwordUsedBeforeFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function()? recoverySuccess,
    TResult? Function()? recoveryFailure,
    TResult? Function()? passwordUsedBeforeFailure,
  }) {
    return passwordUsedBeforeFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function()? recoverySuccess,
    TResult Function()? recoveryFailure,
    TResult Function()? passwordUsedBeforeFailure,
    required TResult orElse(),
  }) {
    if (passwordUsedBeforeFailure != null) {
      return passwordUsedBeforeFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_EnabledSubmit value) enabledSubmit,
    required TResult Function(_DisabledSubmit value) disabledSubmit,
    required TResult Function(_RecoverySuccess value) recoverySuccess,
    required TResult Function(_RecoveryFailure value) recoveryFailure,
    required TResult Function(_PasswordUsedBeforeFailure value)
        passwordUsedBeforeFailure,
  }) {
    return passwordUsedBeforeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_RecoverySuccess value)? recoverySuccess,
    TResult? Function(_RecoveryFailure value)? recoveryFailure,
    TResult? Function(_PasswordUsedBeforeFailure value)?
        passwordUsedBeforeFailure,
  }) {
    return passwordUsedBeforeFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_RecoverySuccess value)? recoverySuccess,
    TResult Function(_RecoveryFailure value)? recoveryFailure,
    TResult Function(_PasswordUsedBeforeFailure value)?
        passwordUsedBeforeFailure,
    required TResult orElse(),
  }) {
    if (passwordUsedBeforeFailure != null) {
      return passwordUsedBeforeFailure(this);
    }
    return orElse();
  }
}

abstract class _PasswordUsedBeforeFailure
    implements RecoveryPasswordInputState {
  const factory _PasswordUsedBeforeFailure() = _$_PasswordUsedBeforeFailure;
}
