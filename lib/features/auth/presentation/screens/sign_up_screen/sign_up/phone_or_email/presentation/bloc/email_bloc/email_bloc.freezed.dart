// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enableSubmit,
    required TResult Function() disableSubmit,
    required TResult Function(String email) trySubmitEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enableSubmit,
    TResult? Function()? disableSubmit,
    TResult? Function(String email)? trySubmitEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enableSubmit,
    TResult Function()? disableSubmit,
    TResult Function(String email)? trySubmitEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnableSubmit value) enableSubmit,
    required TResult Function(_DisableSubmit value) disableSubmit,
    required TResult Function(_TrySubmitEmail value) trySubmitEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnableSubmit value)? enableSubmit,
    TResult? Function(_DisableSubmit value)? disableSubmit,
    TResult? Function(_TrySubmitEmail value)? trySubmitEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnableSubmit value)? enableSubmit,
    TResult Function(_DisableSubmit value)? disableSubmit,
    TResult Function(_TrySubmitEmail value)? trySubmitEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailEventCopyWith<$Res> {
  factory $EmailEventCopyWith(
          EmailEvent value, $Res Function(EmailEvent) then) =
      _$EmailEventCopyWithImpl<$Res, EmailEvent>;
}

/// @nodoc
class _$EmailEventCopyWithImpl<$Res, $Val extends EmailEvent>
    implements $EmailEventCopyWith<$Res> {
  _$EmailEventCopyWithImpl(this._value, this._then);

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
    extends _$EmailEventCopyWithImpl<$Res, _$_EnableSubmit>
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
    return 'EmailEvent.enableSubmit()';
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
    required TResult Function(String email) trySubmitEmail,
  }) {
    return enableSubmit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enableSubmit,
    TResult? Function()? disableSubmit,
    TResult? Function(String email)? trySubmitEmail,
  }) {
    return enableSubmit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enableSubmit,
    TResult Function()? disableSubmit,
    TResult Function(String email)? trySubmitEmail,
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
    required TResult Function(_TrySubmitEmail value) trySubmitEmail,
  }) {
    return enableSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnableSubmit value)? enableSubmit,
    TResult? Function(_DisableSubmit value)? disableSubmit,
    TResult? Function(_TrySubmitEmail value)? trySubmitEmail,
  }) {
    return enableSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnableSubmit value)? enableSubmit,
    TResult Function(_DisableSubmit value)? disableSubmit,
    TResult Function(_TrySubmitEmail value)? trySubmitEmail,
    required TResult orElse(),
  }) {
    if (enableSubmit != null) {
      return enableSubmit(this);
    }
    return orElse();
  }
}

abstract class _EnableSubmit implements EmailEvent {
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
    extends _$EmailEventCopyWithImpl<$Res, _$_DisableSubmit>
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
    return 'EmailEvent.disableSubmit()';
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
    required TResult Function(String email) trySubmitEmail,
  }) {
    return disableSubmit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enableSubmit,
    TResult? Function()? disableSubmit,
    TResult? Function(String email)? trySubmitEmail,
  }) {
    return disableSubmit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enableSubmit,
    TResult Function()? disableSubmit,
    TResult Function(String email)? trySubmitEmail,
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
    required TResult Function(_TrySubmitEmail value) trySubmitEmail,
  }) {
    return disableSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnableSubmit value)? enableSubmit,
    TResult? Function(_DisableSubmit value)? disableSubmit,
    TResult? Function(_TrySubmitEmail value)? trySubmitEmail,
  }) {
    return disableSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnableSubmit value)? enableSubmit,
    TResult Function(_DisableSubmit value)? disableSubmit,
    TResult Function(_TrySubmitEmail value)? trySubmitEmail,
    required TResult orElse(),
  }) {
    if (disableSubmit != null) {
      return disableSubmit(this);
    }
    return orElse();
  }
}

abstract class _DisableSubmit implements EmailEvent {
  const factory _DisableSubmit() = _$_DisableSubmit;
}

/// @nodoc
abstract class _$$_TrySubmitEmailCopyWith<$Res> {
  factory _$$_TrySubmitEmailCopyWith(
          _$_TrySubmitEmail value, $Res Function(_$_TrySubmitEmail) then) =
      __$$_TrySubmitEmailCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_TrySubmitEmailCopyWithImpl<$Res>
    extends _$EmailEventCopyWithImpl<$Res, _$_TrySubmitEmail>
    implements _$$_TrySubmitEmailCopyWith<$Res> {
  __$$_TrySubmitEmailCopyWithImpl(
      _$_TrySubmitEmail _value, $Res Function(_$_TrySubmitEmail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_TrySubmitEmail(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TrySubmitEmail implements _TrySubmitEmail {
  const _$_TrySubmitEmail(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'EmailEvent.trySubmitEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrySubmitEmail &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrySubmitEmailCopyWith<_$_TrySubmitEmail> get copyWith =>
      __$$_TrySubmitEmailCopyWithImpl<_$_TrySubmitEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enableSubmit,
    required TResult Function() disableSubmit,
    required TResult Function(String email) trySubmitEmail,
  }) {
    return trySubmitEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enableSubmit,
    TResult? Function()? disableSubmit,
    TResult? Function(String email)? trySubmitEmail,
  }) {
    return trySubmitEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enableSubmit,
    TResult Function()? disableSubmit,
    TResult Function(String email)? trySubmitEmail,
    required TResult orElse(),
  }) {
    if (trySubmitEmail != null) {
      return trySubmitEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnableSubmit value) enableSubmit,
    required TResult Function(_DisableSubmit value) disableSubmit,
    required TResult Function(_TrySubmitEmail value) trySubmitEmail,
  }) {
    return trySubmitEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnableSubmit value)? enableSubmit,
    TResult? Function(_DisableSubmit value)? disableSubmit,
    TResult? Function(_TrySubmitEmail value)? trySubmitEmail,
  }) {
    return trySubmitEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnableSubmit value)? enableSubmit,
    TResult Function(_DisableSubmit value)? disableSubmit,
    TResult Function(_TrySubmitEmail value)? trySubmitEmail,
    required TResult orElse(),
  }) {
    if (trySubmitEmail != null) {
      return trySubmitEmail(this);
    }
    return orElse();
  }
}

abstract class _TrySubmitEmail implements EmailEvent {
  const factory _TrySubmitEmail(final String email) = _$_TrySubmitEmail;

  String get email;
  @JsonKey(ignore: true)
  _$$_TrySubmitEmailCopyWith<_$_TrySubmitEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() enabledSubmit,
    required TResult Function() disabledSubmit,
    required TResult Function(String email) validationEmailSuccess,
    required TResult Function() validationFailureEmailExists,
    required TResult Function() validationFailureEmailIsNotValid,
    required TResult Function() validationFailureEmailUnknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function(String email)? validationEmailSuccess,
    TResult? Function()? validationFailureEmailExists,
    TResult? Function()? validationFailureEmailIsNotValid,
    TResult? Function()? validationFailureEmailUnknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function(String email)? validationEmailSuccess,
    TResult Function()? validationFailureEmailExists,
    TResult Function()? validationFailureEmailIsNotValid,
    TResult Function()? validationFailureEmailUnknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_EnabledSubmit value) enabledSubmit,
    required TResult Function(_DisabledSubmit value) disabledSubmit,
    required TResult Function(_ValidationEmailSuccess value)
        validationEmailSuccess,
    required TResult Function(_ValidationFailureEmailExists value)
        validationFailureEmailExists,
    required TResult Function(_ValidationFailureEmailIsNotValid value)
        validationFailureEmailIsNotValid,
    required TResult Function(_ValidationFailureEmailUnknown value)
        validationFailureEmailUnknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_ValidationEmailSuccess value)? validationEmailSuccess,
    TResult? Function(_ValidationFailureEmailExists value)?
        validationFailureEmailExists,
    TResult? Function(_ValidationFailureEmailIsNotValid value)?
        validationFailureEmailIsNotValid,
    TResult? Function(_ValidationFailureEmailUnknown value)?
        validationFailureEmailUnknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_ValidationEmailSuccess value)? validationEmailSuccess,
    TResult Function(_ValidationFailureEmailExists value)?
        validationFailureEmailExists,
    TResult Function(_ValidationFailureEmailIsNotValid value)?
        validationFailureEmailIsNotValid,
    TResult Function(_ValidationFailureEmailUnknown value)?
        validationFailureEmailUnknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailStateCopyWith<$Res> {
  factory $EmailStateCopyWith(
          EmailState value, $Res Function(EmailState) then) =
      _$EmailStateCopyWithImpl<$Res, EmailState>;
}

/// @nodoc
class _$EmailStateCopyWithImpl<$Res, $Val extends EmailState>
    implements $EmailStateCopyWith<$Res> {
  _$EmailStateCopyWithImpl(this._value, this._then);

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
    extends _$EmailStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'EmailState.initial()';
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
    required TResult Function(String email) validationEmailSuccess,
    required TResult Function() validationFailureEmailExists,
    required TResult Function() validationFailureEmailIsNotValid,
    required TResult Function() validationFailureEmailUnknown,
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
    TResult? Function(String email)? validationEmailSuccess,
    TResult? Function()? validationFailureEmailExists,
    TResult? Function()? validationFailureEmailIsNotValid,
    TResult? Function()? validationFailureEmailUnknown,
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
    TResult Function(String email)? validationEmailSuccess,
    TResult Function()? validationFailureEmailExists,
    TResult Function()? validationFailureEmailIsNotValid,
    TResult Function()? validationFailureEmailUnknown,
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
    required TResult Function(_ValidationEmailSuccess value)
        validationEmailSuccess,
    required TResult Function(_ValidationFailureEmailExists value)
        validationFailureEmailExists,
    required TResult Function(_ValidationFailureEmailIsNotValid value)
        validationFailureEmailIsNotValid,
    required TResult Function(_ValidationFailureEmailUnknown value)
        validationFailureEmailUnknown,
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
    TResult? Function(_ValidationEmailSuccess value)? validationEmailSuccess,
    TResult? Function(_ValidationFailureEmailExists value)?
        validationFailureEmailExists,
    TResult? Function(_ValidationFailureEmailIsNotValid value)?
        validationFailureEmailIsNotValid,
    TResult? Function(_ValidationFailureEmailUnknown value)?
        validationFailureEmailUnknown,
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
    TResult Function(_ValidationEmailSuccess value)? validationEmailSuccess,
    TResult Function(_ValidationFailureEmailExists value)?
        validationFailureEmailExists,
    TResult Function(_ValidationFailureEmailIsNotValid value)?
        validationFailureEmailIsNotValid,
    TResult Function(_ValidationFailureEmailUnknown value)?
        validationFailureEmailUnknown,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EmailState {
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
    extends _$EmailStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'EmailState.loading()';
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
    required TResult Function(String email) validationEmailSuccess,
    required TResult Function() validationFailureEmailExists,
    required TResult Function() validationFailureEmailIsNotValid,
    required TResult Function() validationFailureEmailUnknown,
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
    TResult? Function(String email)? validationEmailSuccess,
    TResult? Function()? validationFailureEmailExists,
    TResult? Function()? validationFailureEmailIsNotValid,
    TResult? Function()? validationFailureEmailUnknown,
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
    TResult Function(String email)? validationEmailSuccess,
    TResult Function()? validationFailureEmailExists,
    TResult Function()? validationFailureEmailIsNotValid,
    TResult Function()? validationFailureEmailUnknown,
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
    required TResult Function(_ValidationEmailSuccess value)
        validationEmailSuccess,
    required TResult Function(_ValidationFailureEmailExists value)
        validationFailureEmailExists,
    required TResult Function(_ValidationFailureEmailIsNotValid value)
        validationFailureEmailIsNotValid,
    required TResult Function(_ValidationFailureEmailUnknown value)
        validationFailureEmailUnknown,
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
    TResult? Function(_ValidationEmailSuccess value)? validationEmailSuccess,
    TResult? Function(_ValidationFailureEmailExists value)?
        validationFailureEmailExists,
    TResult? Function(_ValidationFailureEmailIsNotValid value)?
        validationFailureEmailIsNotValid,
    TResult? Function(_ValidationFailureEmailUnknown value)?
        validationFailureEmailUnknown,
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
    TResult Function(_ValidationEmailSuccess value)? validationEmailSuccess,
    TResult Function(_ValidationFailureEmailExists value)?
        validationFailureEmailExists,
    TResult Function(_ValidationFailureEmailIsNotValid value)?
        validationFailureEmailIsNotValid,
    TResult Function(_ValidationFailureEmailUnknown value)?
        validationFailureEmailUnknown,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements EmailState {
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
    extends _$EmailStateCopyWithImpl<$Res, _$_EnabledSubmit>
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
    return 'EmailState.enabledSubmit()';
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
    required TResult Function(String email) validationEmailSuccess,
    required TResult Function() validationFailureEmailExists,
    required TResult Function() validationFailureEmailIsNotValid,
    required TResult Function() validationFailureEmailUnknown,
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
    TResult? Function(String email)? validationEmailSuccess,
    TResult? Function()? validationFailureEmailExists,
    TResult? Function()? validationFailureEmailIsNotValid,
    TResult? Function()? validationFailureEmailUnknown,
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
    TResult Function(String email)? validationEmailSuccess,
    TResult Function()? validationFailureEmailExists,
    TResult Function()? validationFailureEmailIsNotValid,
    TResult Function()? validationFailureEmailUnknown,
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
    required TResult Function(_ValidationEmailSuccess value)
        validationEmailSuccess,
    required TResult Function(_ValidationFailureEmailExists value)
        validationFailureEmailExists,
    required TResult Function(_ValidationFailureEmailIsNotValid value)
        validationFailureEmailIsNotValid,
    required TResult Function(_ValidationFailureEmailUnknown value)
        validationFailureEmailUnknown,
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
    TResult? Function(_ValidationEmailSuccess value)? validationEmailSuccess,
    TResult? Function(_ValidationFailureEmailExists value)?
        validationFailureEmailExists,
    TResult? Function(_ValidationFailureEmailIsNotValid value)?
        validationFailureEmailIsNotValid,
    TResult? Function(_ValidationFailureEmailUnknown value)?
        validationFailureEmailUnknown,
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
    TResult Function(_ValidationEmailSuccess value)? validationEmailSuccess,
    TResult Function(_ValidationFailureEmailExists value)?
        validationFailureEmailExists,
    TResult Function(_ValidationFailureEmailIsNotValid value)?
        validationFailureEmailIsNotValid,
    TResult Function(_ValidationFailureEmailUnknown value)?
        validationFailureEmailUnknown,
    required TResult orElse(),
  }) {
    if (enabledSubmit != null) {
      return enabledSubmit(this);
    }
    return orElse();
  }
}

abstract class _EnabledSubmit implements EmailState {
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
    extends _$EmailStateCopyWithImpl<$Res, _$_DisabledSubmit>
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
    return 'EmailState.disabledSubmit()';
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
    required TResult Function(String email) validationEmailSuccess,
    required TResult Function() validationFailureEmailExists,
    required TResult Function() validationFailureEmailIsNotValid,
    required TResult Function() validationFailureEmailUnknown,
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
    TResult? Function(String email)? validationEmailSuccess,
    TResult? Function()? validationFailureEmailExists,
    TResult? Function()? validationFailureEmailIsNotValid,
    TResult? Function()? validationFailureEmailUnknown,
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
    TResult Function(String email)? validationEmailSuccess,
    TResult Function()? validationFailureEmailExists,
    TResult Function()? validationFailureEmailIsNotValid,
    TResult Function()? validationFailureEmailUnknown,
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
    required TResult Function(_ValidationEmailSuccess value)
        validationEmailSuccess,
    required TResult Function(_ValidationFailureEmailExists value)
        validationFailureEmailExists,
    required TResult Function(_ValidationFailureEmailIsNotValid value)
        validationFailureEmailIsNotValid,
    required TResult Function(_ValidationFailureEmailUnknown value)
        validationFailureEmailUnknown,
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
    TResult? Function(_ValidationEmailSuccess value)? validationEmailSuccess,
    TResult? Function(_ValidationFailureEmailExists value)?
        validationFailureEmailExists,
    TResult? Function(_ValidationFailureEmailIsNotValid value)?
        validationFailureEmailIsNotValid,
    TResult? Function(_ValidationFailureEmailUnknown value)?
        validationFailureEmailUnknown,
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
    TResult Function(_ValidationEmailSuccess value)? validationEmailSuccess,
    TResult Function(_ValidationFailureEmailExists value)?
        validationFailureEmailExists,
    TResult Function(_ValidationFailureEmailIsNotValid value)?
        validationFailureEmailIsNotValid,
    TResult Function(_ValidationFailureEmailUnknown value)?
        validationFailureEmailUnknown,
    required TResult orElse(),
  }) {
    if (disabledSubmit != null) {
      return disabledSubmit(this);
    }
    return orElse();
  }
}

abstract class _DisabledSubmit implements EmailState {
  const factory _DisabledSubmit() = _$_DisabledSubmit;
}

/// @nodoc
abstract class _$$_ValidationEmailSuccessCopyWith<$Res> {
  factory _$$_ValidationEmailSuccessCopyWith(_$_ValidationEmailSuccess value,
          $Res Function(_$_ValidationEmailSuccess) then) =
      __$$_ValidationEmailSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_ValidationEmailSuccessCopyWithImpl<$Res>
    extends _$EmailStateCopyWithImpl<$Res, _$_ValidationEmailSuccess>
    implements _$$_ValidationEmailSuccessCopyWith<$Res> {
  __$$_ValidationEmailSuccessCopyWithImpl(_$_ValidationEmailSuccess _value,
      $Res Function(_$_ValidationEmailSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_ValidationEmailSuccess(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ValidationEmailSuccess implements _ValidationEmailSuccess {
  const _$_ValidationEmailSuccess(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'EmailState.validationEmailSuccess(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidationEmailSuccess &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidationEmailSuccessCopyWith<_$_ValidationEmailSuccess> get copyWith =>
      __$$_ValidationEmailSuccessCopyWithImpl<_$_ValidationEmailSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() enabledSubmit,
    required TResult Function() disabledSubmit,
    required TResult Function(String email) validationEmailSuccess,
    required TResult Function() validationFailureEmailExists,
    required TResult Function() validationFailureEmailIsNotValid,
    required TResult Function() validationFailureEmailUnknown,
  }) {
    return validationEmailSuccess(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function(String email)? validationEmailSuccess,
    TResult? Function()? validationFailureEmailExists,
    TResult? Function()? validationFailureEmailIsNotValid,
    TResult? Function()? validationFailureEmailUnknown,
  }) {
    return validationEmailSuccess?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function(String email)? validationEmailSuccess,
    TResult Function()? validationFailureEmailExists,
    TResult Function()? validationFailureEmailIsNotValid,
    TResult Function()? validationFailureEmailUnknown,
    required TResult orElse(),
  }) {
    if (validationEmailSuccess != null) {
      return validationEmailSuccess(email);
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
    required TResult Function(_ValidationEmailSuccess value)
        validationEmailSuccess,
    required TResult Function(_ValidationFailureEmailExists value)
        validationFailureEmailExists,
    required TResult Function(_ValidationFailureEmailIsNotValid value)
        validationFailureEmailIsNotValid,
    required TResult Function(_ValidationFailureEmailUnknown value)
        validationFailureEmailUnknown,
  }) {
    return validationEmailSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_ValidationEmailSuccess value)? validationEmailSuccess,
    TResult? Function(_ValidationFailureEmailExists value)?
        validationFailureEmailExists,
    TResult? Function(_ValidationFailureEmailIsNotValid value)?
        validationFailureEmailIsNotValid,
    TResult? Function(_ValidationFailureEmailUnknown value)?
        validationFailureEmailUnknown,
  }) {
    return validationEmailSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_ValidationEmailSuccess value)? validationEmailSuccess,
    TResult Function(_ValidationFailureEmailExists value)?
        validationFailureEmailExists,
    TResult Function(_ValidationFailureEmailIsNotValid value)?
        validationFailureEmailIsNotValid,
    TResult Function(_ValidationFailureEmailUnknown value)?
        validationFailureEmailUnknown,
    required TResult orElse(),
  }) {
    if (validationEmailSuccess != null) {
      return validationEmailSuccess(this);
    }
    return orElse();
  }
}

abstract class _ValidationEmailSuccess implements EmailState {
  const factory _ValidationEmailSuccess(final String email) =
      _$_ValidationEmailSuccess;

  String get email;
  @JsonKey(ignore: true)
  _$$_ValidationEmailSuccessCopyWith<_$_ValidationEmailSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ValidationFailureEmailExistsCopyWith<$Res> {
  factory _$$_ValidationFailureEmailExistsCopyWith(
          _$_ValidationFailureEmailExists value,
          $Res Function(_$_ValidationFailureEmailExists) then) =
      __$$_ValidationFailureEmailExistsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ValidationFailureEmailExistsCopyWithImpl<$Res>
    extends _$EmailStateCopyWithImpl<$Res, _$_ValidationFailureEmailExists>
    implements _$$_ValidationFailureEmailExistsCopyWith<$Res> {
  __$$_ValidationFailureEmailExistsCopyWithImpl(
      _$_ValidationFailureEmailExists _value,
      $Res Function(_$_ValidationFailureEmailExists) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ValidationFailureEmailExists implements _ValidationFailureEmailExists {
  const _$_ValidationFailureEmailExists();

  @override
  String toString() {
    return 'EmailState.validationFailureEmailExists()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidationFailureEmailExists);
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
    required TResult Function(String email) validationEmailSuccess,
    required TResult Function() validationFailureEmailExists,
    required TResult Function() validationFailureEmailIsNotValid,
    required TResult Function() validationFailureEmailUnknown,
  }) {
    return validationFailureEmailExists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function(String email)? validationEmailSuccess,
    TResult? Function()? validationFailureEmailExists,
    TResult? Function()? validationFailureEmailIsNotValid,
    TResult? Function()? validationFailureEmailUnknown,
  }) {
    return validationFailureEmailExists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function(String email)? validationEmailSuccess,
    TResult Function()? validationFailureEmailExists,
    TResult Function()? validationFailureEmailIsNotValid,
    TResult Function()? validationFailureEmailUnknown,
    required TResult orElse(),
  }) {
    if (validationFailureEmailExists != null) {
      return validationFailureEmailExists();
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
    required TResult Function(_ValidationEmailSuccess value)
        validationEmailSuccess,
    required TResult Function(_ValidationFailureEmailExists value)
        validationFailureEmailExists,
    required TResult Function(_ValidationFailureEmailIsNotValid value)
        validationFailureEmailIsNotValid,
    required TResult Function(_ValidationFailureEmailUnknown value)
        validationFailureEmailUnknown,
  }) {
    return validationFailureEmailExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_ValidationEmailSuccess value)? validationEmailSuccess,
    TResult? Function(_ValidationFailureEmailExists value)?
        validationFailureEmailExists,
    TResult? Function(_ValidationFailureEmailIsNotValid value)?
        validationFailureEmailIsNotValid,
    TResult? Function(_ValidationFailureEmailUnknown value)?
        validationFailureEmailUnknown,
  }) {
    return validationFailureEmailExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_ValidationEmailSuccess value)? validationEmailSuccess,
    TResult Function(_ValidationFailureEmailExists value)?
        validationFailureEmailExists,
    TResult Function(_ValidationFailureEmailIsNotValid value)?
        validationFailureEmailIsNotValid,
    TResult Function(_ValidationFailureEmailUnknown value)?
        validationFailureEmailUnknown,
    required TResult orElse(),
  }) {
    if (validationFailureEmailExists != null) {
      return validationFailureEmailExists(this);
    }
    return orElse();
  }
}

abstract class _ValidationFailureEmailExists implements EmailState {
  const factory _ValidationFailureEmailExists() =
      _$_ValidationFailureEmailExists;
}

/// @nodoc
abstract class _$$_ValidationFailureEmailIsNotValidCopyWith<$Res> {
  factory _$$_ValidationFailureEmailIsNotValidCopyWith(
          _$_ValidationFailureEmailIsNotValid value,
          $Res Function(_$_ValidationFailureEmailIsNotValid) then) =
      __$$_ValidationFailureEmailIsNotValidCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ValidationFailureEmailIsNotValidCopyWithImpl<$Res>
    extends _$EmailStateCopyWithImpl<$Res, _$_ValidationFailureEmailIsNotValid>
    implements _$$_ValidationFailureEmailIsNotValidCopyWith<$Res> {
  __$$_ValidationFailureEmailIsNotValidCopyWithImpl(
      _$_ValidationFailureEmailIsNotValid _value,
      $Res Function(_$_ValidationFailureEmailIsNotValid) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ValidationFailureEmailIsNotValid
    implements _ValidationFailureEmailIsNotValid {
  const _$_ValidationFailureEmailIsNotValid();

  @override
  String toString() {
    return 'EmailState.validationFailureEmailIsNotValid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidationFailureEmailIsNotValid);
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
    required TResult Function(String email) validationEmailSuccess,
    required TResult Function() validationFailureEmailExists,
    required TResult Function() validationFailureEmailIsNotValid,
    required TResult Function() validationFailureEmailUnknown,
  }) {
    return validationFailureEmailIsNotValid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function(String email)? validationEmailSuccess,
    TResult? Function()? validationFailureEmailExists,
    TResult? Function()? validationFailureEmailIsNotValid,
    TResult? Function()? validationFailureEmailUnknown,
  }) {
    return validationFailureEmailIsNotValid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function(String email)? validationEmailSuccess,
    TResult Function()? validationFailureEmailExists,
    TResult Function()? validationFailureEmailIsNotValid,
    TResult Function()? validationFailureEmailUnknown,
    required TResult orElse(),
  }) {
    if (validationFailureEmailIsNotValid != null) {
      return validationFailureEmailIsNotValid();
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
    required TResult Function(_ValidationEmailSuccess value)
        validationEmailSuccess,
    required TResult Function(_ValidationFailureEmailExists value)
        validationFailureEmailExists,
    required TResult Function(_ValidationFailureEmailIsNotValid value)
        validationFailureEmailIsNotValid,
    required TResult Function(_ValidationFailureEmailUnknown value)
        validationFailureEmailUnknown,
  }) {
    return validationFailureEmailIsNotValid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_ValidationEmailSuccess value)? validationEmailSuccess,
    TResult? Function(_ValidationFailureEmailExists value)?
        validationFailureEmailExists,
    TResult? Function(_ValidationFailureEmailIsNotValid value)?
        validationFailureEmailIsNotValid,
    TResult? Function(_ValidationFailureEmailUnknown value)?
        validationFailureEmailUnknown,
  }) {
    return validationFailureEmailIsNotValid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_ValidationEmailSuccess value)? validationEmailSuccess,
    TResult Function(_ValidationFailureEmailExists value)?
        validationFailureEmailExists,
    TResult Function(_ValidationFailureEmailIsNotValid value)?
        validationFailureEmailIsNotValid,
    TResult Function(_ValidationFailureEmailUnknown value)?
        validationFailureEmailUnknown,
    required TResult orElse(),
  }) {
    if (validationFailureEmailIsNotValid != null) {
      return validationFailureEmailIsNotValid(this);
    }
    return orElse();
  }
}

abstract class _ValidationFailureEmailIsNotValid implements EmailState {
  const factory _ValidationFailureEmailIsNotValid() =
      _$_ValidationFailureEmailIsNotValid;
}

/// @nodoc
abstract class _$$_ValidationFailureEmailUnknownCopyWith<$Res> {
  factory _$$_ValidationFailureEmailUnknownCopyWith(
          _$_ValidationFailureEmailUnknown value,
          $Res Function(_$_ValidationFailureEmailUnknown) then) =
      __$$_ValidationFailureEmailUnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ValidationFailureEmailUnknownCopyWithImpl<$Res>
    extends _$EmailStateCopyWithImpl<$Res, _$_ValidationFailureEmailUnknown>
    implements _$$_ValidationFailureEmailUnknownCopyWith<$Res> {
  __$$_ValidationFailureEmailUnknownCopyWithImpl(
      _$_ValidationFailureEmailUnknown _value,
      $Res Function(_$_ValidationFailureEmailUnknown) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ValidationFailureEmailUnknown
    implements _ValidationFailureEmailUnknown {
  const _$_ValidationFailureEmailUnknown();

  @override
  String toString() {
    return 'EmailState.validationFailureEmailUnknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidationFailureEmailUnknown);
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
    required TResult Function(String email) validationEmailSuccess,
    required TResult Function() validationFailureEmailExists,
    required TResult Function() validationFailureEmailIsNotValid,
    required TResult Function() validationFailureEmailUnknown,
  }) {
    return validationFailureEmailUnknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function(String email)? validationEmailSuccess,
    TResult? Function()? validationFailureEmailExists,
    TResult? Function()? validationFailureEmailIsNotValid,
    TResult? Function()? validationFailureEmailUnknown,
  }) {
    return validationFailureEmailUnknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function(String email)? validationEmailSuccess,
    TResult Function()? validationFailureEmailExists,
    TResult Function()? validationFailureEmailIsNotValid,
    TResult Function()? validationFailureEmailUnknown,
    required TResult orElse(),
  }) {
    if (validationFailureEmailUnknown != null) {
      return validationFailureEmailUnknown();
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
    required TResult Function(_ValidationEmailSuccess value)
        validationEmailSuccess,
    required TResult Function(_ValidationFailureEmailExists value)
        validationFailureEmailExists,
    required TResult Function(_ValidationFailureEmailIsNotValid value)
        validationFailureEmailIsNotValid,
    required TResult Function(_ValidationFailureEmailUnknown value)
        validationFailureEmailUnknown,
  }) {
    return validationFailureEmailUnknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_ValidationEmailSuccess value)? validationEmailSuccess,
    TResult? Function(_ValidationFailureEmailExists value)?
        validationFailureEmailExists,
    TResult? Function(_ValidationFailureEmailIsNotValid value)?
        validationFailureEmailIsNotValid,
    TResult? Function(_ValidationFailureEmailUnknown value)?
        validationFailureEmailUnknown,
  }) {
    return validationFailureEmailUnknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_ValidationEmailSuccess value)? validationEmailSuccess,
    TResult Function(_ValidationFailureEmailExists value)?
        validationFailureEmailExists,
    TResult Function(_ValidationFailureEmailIsNotValid value)?
        validationFailureEmailIsNotValid,
    TResult Function(_ValidationFailureEmailUnknown value)?
        validationFailureEmailUnknown,
    required TResult orElse(),
  }) {
    if (validationFailureEmailUnknown != null) {
      return validationFailureEmailUnknown(this);
    }
    return orElse();
  }
}

abstract class _ValidationFailureEmailUnknown implements EmailState {
  const factory _ValidationFailureEmailUnknown() =
      _$_ValidationFailureEmailUnknown;
}
