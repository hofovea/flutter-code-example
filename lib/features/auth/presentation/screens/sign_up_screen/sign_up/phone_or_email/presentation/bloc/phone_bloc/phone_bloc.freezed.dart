// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhoneEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enableSubmit,
    required TResult Function() disableSubmit,
    required TResult Function(String phone) trySubmitPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enableSubmit,
    TResult? Function()? disableSubmit,
    TResult? Function(String phone)? trySubmitPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enableSubmit,
    TResult Function()? disableSubmit,
    TResult Function(String phone)? trySubmitPhone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnableSubmit value) enableSubmit,
    required TResult Function(_DisableSubmit value) disableSubmit,
    required TResult Function(_TrySubmitPhone value) trySubmitPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnableSubmit value)? enableSubmit,
    TResult? Function(_DisableSubmit value)? disableSubmit,
    TResult? Function(_TrySubmitPhone value)? trySubmitPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnableSubmit value)? enableSubmit,
    TResult Function(_DisableSubmit value)? disableSubmit,
    TResult Function(_TrySubmitPhone value)? trySubmitPhone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneEventCopyWith<$Res> {
  factory $PhoneEventCopyWith(
          PhoneEvent value, $Res Function(PhoneEvent) then) =
      _$PhoneEventCopyWithImpl<$Res, PhoneEvent>;
}

/// @nodoc
class _$PhoneEventCopyWithImpl<$Res, $Val extends PhoneEvent>
    implements $PhoneEventCopyWith<$Res> {
  _$PhoneEventCopyWithImpl(this._value, this._then);

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
    extends _$PhoneEventCopyWithImpl<$Res, _$_EnableSubmit>
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
    return 'PhoneEvent.enableSubmit()';
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
    required TResult Function(String phone) trySubmitPhone,
  }) {
    return enableSubmit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enableSubmit,
    TResult? Function()? disableSubmit,
    TResult? Function(String phone)? trySubmitPhone,
  }) {
    return enableSubmit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enableSubmit,
    TResult Function()? disableSubmit,
    TResult Function(String phone)? trySubmitPhone,
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
    required TResult Function(_TrySubmitPhone value) trySubmitPhone,
  }) {
    return enableSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnableSubmit value)? enableSubmit,
    TResult? Function(_DisableSubmit value)? disableSubmit,
    TResult? Function(_TrySubmitPhone value)? trySubmitPhone,
  }) {
    return enableSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnableSubmit value)? enableSubmit,
    TResult Function(_DisableSubmit value)? disableSubmit,
    TResult Function(_TrySubmitPhone value)? trySubmitPhone,
    required TResult orElse(),
  }) {
    if (enableSubmit != null) {
      return enableSubmit(this);
    }
    return orElse();
  }
}

abstract class _EnableSubmit implements PhoneEvent {
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
    extends _$PhoneEventCopyWithImpl<$Res, _$_DisableSubmit>
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
    return 'PhoneEvent.disableSubmit()';
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
    required TResult Function(String phone) trySubmitPhone,
  }) {
    return disableSubmit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enableSubmit,
    TResult? Function()? disableSubmit,
    TResult? Function(String phone)? trySubmitPhone,
  }) {
    return disableSubmit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enableSubmit,
    TResult Function()? disableSubmit,
    TResult Function(String phone)? trySubmitPhone,
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
    required TResult Function(_TrySubmitPhone value) trySubmitPhone,
  }) {
    return disableSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnableSubmit value)? enableSubmit,
    TResult? Function(_DisableSubmit value)? disableSubmit,
    TResult? Function(_TrySubmitPhone value)? trySubmitPhone,
  }) {
    return disableSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnableSubmit value)? enableSubmit,
    TResult Function(_DisableSubmit value)? disableSubmit,
    TResult Function(_TrySubmitPhone value)? trySubmitPhone,
    required TResult orElse(),
  }) {
    if (disableSubmit != null) {
      return disableSubmit(this);
    }
    return orElse();
  }
}

abstract class _DisableSubmit implements PhoneEvent {
  const factory _DisableSubmit() = _$_DisableSubmit;
}

/// @nodoc
abstract class _$$_TrySubmitPhoneCopyWith<$Res> {
  factory _$$_TrySubmitPhoneCopyWith(
          _$_TrySubmitPhone value, $Res Function(_$_TrySubmitPhone) then) =
      __$$_TrySubmitPhoneCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$_TrySubmitPhoneCopyWithImpl<$Res>
    extends _$PhoneEventCopyWithImpl<$Res, _$_TrySubmitPhone>
    implements _$$_TrySubmitPhoneCopyWith<$Res> {
  __$$_TrySubmitPhoneCopyWithImpl(
      _$_TrySubmitPhone _value, $Res Function(_$_TrySubmitPhone) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$_TrySubmitPhone(
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TrySubmitPhone implements _TrySubmitPhone {
  const _$_TrySubmitPhone(this.phone);

  @override
  final String phone;

  @override
  String toString() {
    return 'PhoneEvent.trySubmitPhone(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrySubmitPhone &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrySubmitPhoneCopyWith<_$_TrySubmitPhone> get copyWith =>
      __$$_TrySubmitPhoneCopyWithImpl<_$_TrySubmitPhone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enableSubmit,
    required TResult Function() disableSubmit,
    required TResult Function(String phone) trySubmitPhone,
  }) {
    return trySubmitPhone(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enableSubmit,
    TResult? Function()? disableSubmit,
    TResult? Function(String phone)? trySubmitPhone,
  }) {
    return trySubmitPhone?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enableSubmit,
    TResult Function()? disableSubmit,
    TResult Function(String phone)? trySubmitPhone,
    required TResult orElse(),
  }) {
    if (trySubmitPhone != null) {
      return trySubmitPhone(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnableSubmit value) enableSubmit,
    required TResult Function(_DisableSubmit value) disableSubmit,
    required TResult Function(_TrySubmitPhone value) trySubmitPhone,
  }) {
    return trySubmitPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnableSubmit value)? enableSubmit,
    TResult? Function(_DisableSubmit value)? disableSubmit,
    TResult? Function(_TrySubmitPhone value)? trySubmitPhone,
  }) {
    return trySubmitPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnableSubmit value)? enableSubmit,
    TResult Function(_DisableSubmit value)? disableSubmit,
    TResult Function(_TrySubmitPhone value)? trySubmitPhone,
    required TResult orElse(),
  }) {
    if (trySubmitPhone != null) {
      return trySubmitPhone(this);
    }
    return orElse();
  }
}

abstract class _TrySubmitPhone implements PhoneEvent {
  const factory _TrySubmitPhone(final String phone) = _$_TrySubmitPhone;

  String get phone;
  @JsonKey(ignore: true)
  _$$_TrySubmitPhoneCopyWith<_$_TrySubmitPhone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PhoneState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() enabledSubmit,
    required TResult Function() disabledSubmit,
    required TResult Function(String phone) validationPhoneSuccess,
    required TResult Function() validationFailurePhoneExists,
    required TResult Function() validationFailurePhoneIsNotValid,
    required TResult Function() validationFailurePhoneUnknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function(String phone)? validationPhoneSuccess,
    TResult? Function()? validationFailurePhoneExists,
    TResult? Function()? validationFailurePhoneIsNotValid,
    TResult? Function()? validationFailurePhoneUnknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function(String phone)? validationPhoneSuccess,
    TResult Function()? validationFailurePhoneExists,
    TResult Function()? validationFailurePhoneIsNotValid,
    TResult Function()? validationFailurePhoneUnknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_EnabledSubmit value) enabledSubmit,
    required TResult Function(_DisabledSubmit value) disabledSubmit,
    required TResult Function(_ValidationPhoneSuccess value)
        validationPhoneSuccess,
    required TResult Function(_ValidationFailurePhoneExists value)
        validationFailurePhoneExists,
    required TResult Function(_ValidationFailurePhoneIsNotValid value)
        validationFailurePhoneIsNotValid,
    required TResult Function(_ValidationFailurePhoneUnknown value)
        validationFailurePhoneUnknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_ValidationPhoneSuccess value)? validationPhoneSuccess,
    TResult? Function(_ValidationFailurePhoneExists value)?
        validationFailurePhoneExists,
    TResult? Function(_ValidationFailurePhoneIsNotValid value)?
        validationFailurePhoneIsNotValid,
    TResult? Function(_ValidationFailurePhoneUnknown value)?
        validationFailurePhoneUnknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_ValidationPhoneSuccess value)? validationPhoneSuccess,
    TResult Function(_ValidationFailurePhoneExists value)?
        validationFailurePhoneExists,
    TResult Function(_ValidationFailurePhoneIsNotValid value)?
        validationFailurePhoneIsNotValid,
    TResult Function(_ValidationFailurePhoneUnknown value)?
        validationFailurePhoneUnknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneStateCopyWith<$Res> {
  factory $PhoneStateCopyWith(
          PhoneState value, $Res Function(PhoneState) then) =
      _$PhoneStateCopyWithImpl<$Res, PhoneState>;
}

/// @nodoc
class _$PhoneStateCopyWithImpl<$Res, $Val extends PhoneState>
    implements $PhoneStateCopyWith<$Res> {
  _$PhoneStateCopyWithImpl(this._value, this._then);

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
    extends _$PhoneStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PhoneState.initial()';
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
    required TResult Function(String phone) validationPhoneSuccess,
    required TResult Function() validationFailurePhoneExists,
    required TResult Function() validationFailurePhoneIsNotValid,
    required TResult Function() validationFailurePhoneUnknown,
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
    TResult? Function(String phone)? validationPhoneSuccess,
    TResult? Function()? validationFailurePhoneExists,
    TResult? Function()? validationFailurePhoneIsNotValid,
    TResult? Function()? validationFailurePhoneUnknown,
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
    TResult Function(String phone)? validationPhoneSuccess,
    TResult Function()? validationFailurePhoneExists,
    TResult Function()? validationFailurePhoneIsNotValid,
    TResult Function()? validationFailurePhoneUnknown,
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
    required TResult Function(_ValidationPhoneSuccess value)
        validationPhoneSuccess,
    required TResult Function(_ValidationFailurePhoneExists value)
        validationFailurePhoneExists,
    required TResult Function(_ValidationFailurePhoneIsNotValid value)
        validationFailurePhoneIsNotValid,
    required TResult Function(_ValidationFailurePhoneUnknown value)
        validationFailurePhoneUnknown,
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
    TResult? Function(_ValidationPhoneSuccess value)? validationPhoneSuccess,
    TResult? Function(_ValidationFailurePhoneExists value)?
        validationFailurePhoneExists,
    TResult? Function(_ValidationFailurePhoneIsNotValid value)?
        validationFailurePhoneIsNotValid,
    TResult? Function(_ValidationFailurePhoneUnknown value)?
        validationFailurePhoneUnknown,
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
    TResult Function(_ValidationPhoneSuccess value)? validationPhoneSuccess,
    TResult Function(_ValidationFailurePhoneExists value)?
        validationFailurePhoneExists,
    TResult Function(_ValidationFailurePhoneIsNotValid value)?
        validationFailurePhoneIsNotValid,
    TResult Function(_ValidationFailurePhoneUnknown value)?
        validationFailurePhoneUnknown,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PhoneState {
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
    extends _$PhoneStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'PhoneState.loading()';
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
    required TResult Function(String phone) validationPhoneSuccess,
    required TResult Function() validationFailurePhoneExists,
    required TResult Function() validationFailurePhoneIsNotValid,
    required TResult Function() validationFailurePhoneUnknown,
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
    TResult? Function(String phone)? validationPhoneSuccess,
    TResult? Function()? validationFailurePhoneExists,
    TResult? Function()? validationFailurePhoneIsNotValid,
    TResult? Function()? validationFailurePhoneUnknown,
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
    TResult Function(String phone)? validationPhoneSuccess,
    TResult Function()? validationFailurePhoneExists,
    TResult Function()? validationFailurePhoneIsNotValid,
    TResult Function()? validationFailurePhoneUnknown,
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
    required TResult Function(_ValidationPhoneSuccess value)
        validationPhoneSuccess,
    required TResult Function(_ValidationFailurePhoneExists value)
        validationFailurePhoneExists,
    required TResult Function(_ValidationFailurePhoneIsNotValid value)
        validationFailurePhoneIsNotValid,
    required TResult Function(_ValidationFailurePhoneUnknown value)
        validationFailurePhoneUnknown,
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
    TResult? Function(_ValidationPhoneSuccess value)? validationPhoneSuccess,
    TResult? Function(_ValidationFailurePhoneExists value)?
        validationFailurePhoneExists,
    TResult? Function(_ValidationFailurePhoneIsNotValid value)?
        validationFailurePhoneIsNotValid,
    TResult? Function(_ValidationFailurePhoneUnknown value)?
        validationFailurePhoneUnknown,
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
    TResult Function(_ValidationPhoneSuccess value)? validationPhoneSuccess,
    TResult Function(_ValidationFailurePhoneExists value)?
        validationFailurePhoneExists,
    TResult Function(_ValidationFailurePhoneIsNotValid value)?
        validationFailurePhoneIsNotValid,
    TResult Function(_ValidationFailurePhoneUnknown value)?
        validationFailurePhoneUnknown,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PhoneState {
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
    extends _$PhoneStateCopyWithImpl<$Res, _$_EnabledSubmit>
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
    return 'PhoneState.enabledSubmit()';
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
    required TResult Function(String phone) validationPhoneSuccess,
    required TResult Function() validationFailurePhoneExists,
    required TResult Function() validationFailurePhoneIsNotValid,
    required TResult Function() validationFailurePhoneUnknown,
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
    TResult? Function(String phone)? validationPhoneSuccess,
    TResult? Function()? validationFailurePhoneExists,
    TResult? Function()? validationFailurePhoneIsNotValid,
    TResult? Function()? validationFailurePhoneUnknown,
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
    TResult Function(String phone)? validationPhoneSuccess,
    TResult Function()? validationFailurePhoneExists,
    TResult Function()? validationFailurePhoneIsNotValid,
    TResult Function()? validationFailurePhoneUnknown,
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
    required TResult Function(_ValidationPhoneSuccess value)
        validationPhoneSuccess,
    required TResult Function(_ValidationFailurePhoneExists value)
        validationFailurePhoneExists,
    required TResult Function(_ValidationFailurePhoneIsNotValid value)
        validationFailurePhoneIsNotValid,
    required TResult Function(_ValidationFailurePhoneUnknown value)
        validationFailurePhoneUnknown,
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
    TResult? Function(_ValidationPhoneSuccess value)? validationPhoneSuccess,
    TResult? Function(_ValidationFailurePhoneExists value)?
        validationFailurePhoneExists,
    TResult? Function(_ValidationFailurePhoneIsNotValid value)?
        validationFailurePhoneIsNotValid,
    TResult? Function(_ValidationFailurePhoneUnknown value)?
        validationFailurePhoneUnknown,
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
    TResult Function(_ValidationPhoneSuccess value)? validationPhoneSuccess,
    TResult Function(_ValidationFailurePhoneExists value)?
        validationFailurePhoneExists,
    TResult Function(_ValidationFailurePhoneIsNotValid value)?
        validationFailurePhoneIsNotValid,
    TResult Function(_ValidationFailurePhoneUnknown value)?
        validationFailurePhoneUnknown,
    required TResult orElse(),
  }) {
    if (enabledSubmit != null) {
      return enabledSubmit(this);
    }
    return orElse();
  }
}

abstract class _EnabledSubmit implements PhoneState {
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
    extends _$PhoneStateCopyWithImpl<$Res, _$_DisabledSubmit>
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
    return 'PhoneState.disabledSubmit()';
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
    required TResult Function(String phone) validationPhoneSuccess,
    required TResult Function() validationFailurePhoneExists,
    required TResult Function() validationFailurePhoneIsNotValid,
    required TResult Function() validationFailurePhoneUnknown,
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
    TResult? Function(String phone)? validationPhoneSuccess,
    TResult? Function()? validationFailurePhoneExists,
    TResult? Function()? validationFailurePhoneIsNotValid,
    TResult? Function()? validationFailurePhoneUnknown,
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
    TResult Function(String phone)? validationPhoneSuccess,
    TResult Function()? validationFailurePhoneExists,
    TResult Function()? validationFailurePhoneIsNotValid,
    TResult Function()? validationFailurePhoneUnknown,
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
    required TResult Function(_ValidationPhoneSuccess value)
        validationPhoneSuccess,
    required TResult Function(_ValidationFailurePhoneExists value)
        validationFailurePhoneExists,
    required TResult Function(_ValidationFailurePhoneIsNotValid value)
        validationFailurePhoneIsNotValid,
    required TResult Function(_ValidationFailurePhoneUnknown value)
        validationFailurePhoneUnknown,
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
    TResult? Function(_ValidationPhoneSuccess value)? validationPhoneSuccess,
    TResult? Function(_ValidationFailurePhoneExists value)?
        validationFailurePhoneExists,
    TResult? Function(_ValidationFailurePhoneIsNotValid value)?
        validationFailurePhoneIsNotValid,
    TResult? Function(_ValidationFailurePhoneUnknown value)?
        validationFailurePhoneUnknown,
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
    TResult Function(_ValidationPhoneSuccess value)? validationPhoneSuccess,
    TResult Function(_ValidationFailurePhoneExists value)?
        validationFailurePhoneExists,
    TResult Function(_ValidationFailurePhoneIsNotValid value)?
        validationFailurePhoneIsNotValid,
    TResult Function(_ValidationFailurePhoneUnknown value)?
        validationFailurePhoneUnknown,
    required TResult orElse(),
  }) {
    if (disabledSubmit != null) {
      return disabledSubmit(this);
    }
    return orElse();
  }
}

abstract class _DisabledSubmit implements PhoneState {
  const factory _DisabledSubmit() = _$_DisabledSubmit;
}

/// @nodoc
abstract class _$$_ValidationPhoneSuccessCopyWith<$Res> {
  factory _$$_ValidationPhoneSuccessCopyWith(_$_ValidationPhoneSuccess value,
          $Res Function(_$_ValidationPhoneSuccess) then) =
      __$$_ValidationPhoneSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$_ValidationPhoneSuccessCopyWithImpl<$Res>
    extends _$PhoneStateCopyWithImpl<$Res, _$_ValidationPhoneSuccess>
    implements _$$_ValidationPhoneSuccessCopyWith<$Res> {
  __$$_ValidationPhoneSuccessCopyWithImpl(_$_ValidationPhoneSuccess _value,
      $Res Function(_$_ValidationPhoneSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$_ValidationPhoneSuccess(
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ValidationPhoneSuccess implements _ValidationPhoneSuccess {
  const _$_ValidationPhoneSuccess(this.phone);

  @override
  final String phone;

  @override
  String toString() {
    return 'PhoneState.validationPhoneSuccess(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidationPhoneSuccess &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidationPhoneSuccessCopyWith<_$_ValidationPhoneSuccess> get copyWith =>
      __$$_ValidationPhoneSuccessCopyWithImpl<_$_ValidationPhoneSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() enabledSubmit,
    required TResult Function() disabledSubmit,
    required TResult Function(String phone) validationPhoneSuccess,
    required TResult Function() validationFailurePhoneExists,
    required TResult Function() validationFailurePhoneIsNotValid,
    required TResult Function() validationFailurePhoneUnknown,
  }) {
    return validationPhoneSuccess(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function(String phone)? validationPhoneSuccess,
    TResult? Function()? validationFailurePhoneExists,
    TResult? Function()? validationFailurePhoneIsNotValid,
    TResult? Function()? validationFailurePhoneUnknown,
  }) {
    return validationPhoneSuccess?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function(String phone)? validationPhoneSuccess,
    TResult Function()? validationFailurePhoneExists,
    TResult Function()? validationFailurePhoneIsNotValid,
    TResult Function()? validationFailurePhoneUnknown,
    required TResult orElse(),
  }) {
    if (validationPhoneSuccess != null) {
      return validationPhoneSuccess(phone);
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
    required TResult Function(_ValidationPhoneSuccess value)
        validationPhoneSuccess,
    required TResult Function(_ValidationFailurePhoneExists value)
        validationFailurePhoneExists,
    required TResult Function(_ValidationFailurePhoneIsNotValid value)
        validationFailurePhoneIsNotValid,
    required TResult Function(_ValidationFailurePhoneUnknown value)
        validationFailurePhoneUnknown,
  }) {
    return validationPhoneSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_ValidationPhoneSuccess value)? validationPhoneSuccess,
    TResult? Function(_ValidationFailurePhoneExists value)?
        validationFailurePhoneExists,
    TResult? Function(_ValidationFailurePhoneIsNotValid value)?
        validationFailurePhoneIsNotValid,
    TResult? Function(_ValidationFailurePhoneUnknown value)?
        validationFailurePhoneUnknown,
  }) {
    return validationPhoneSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_ValidationPhoneSuccess value)? validationPhoneSuccess,
    TResult Function(_ValidationFailurePhoneExists value)?
        validationFailurePhoneExists,
    TResult Function(_ValidationFailurePhoneIsNotValid value)?
        validationFailurePhoneIsNotValid,
    TResult Function(_ValidationFailurePhoneUnknown value)?
        validationFailurePhoneUnknown,
    required TResult orElse(),
  }) {
    if (validationPhoneSuccess != null) {
      return validationPhoneSuccess(this);
    }
    return orElse();
  }
}

abstract class _ValidationPhoneSuccess implements PhoneState {
  const factory _ValidationPhoneSuccess(final String phone) =
      _$_ValidationPhoneSuccess;

  String get phone;
  @JsonKey(ignore: true)
  _$$_ValidationPhoneSuccessCopyWith<_$_ValidationPhoneSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ValidationFailurePhoneExistsCopyWith<$Res> {
  factory _$$_ValidationFailurePhoneExistsCopyWith(
          _$_ValidationFailurePhoneExists value,
          $Res Function(_$_ValidationFailurePhoneExists) then) =
      __$$_ValidationFailurePhoneExistsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ValidationFailurePhoneExistsCopyWithImpl<$Res>
    extends _$PhoneStateCopyWithImpl<$Res, _$_ValidationFailurePhoneExists>
    implements _$$_ValidationFailurePhoneExistsCopyWith<$Res> {
  __$$_ValidationFailurePhoneExistsCopyWithImpl(
      _$_ValidationFailurePhoneExists _value,
      $Res Function(_$_ValidationFailurePhoneExists) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ValidationFailurePhoneExists implements _ValidationFailurePhoneExists {
  const _$_ValidationFailurePhoneExists();

  @override
  String toString() {
    return 'PhoneState.validationFailurePhoneExists()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidationFailurePhoneExists);
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
    required TResult Function(String phone) validationPhoneSuccess,
    required TResult Function() validationFailurePhoneExists,
    required TResult Function() validationFailurePhoneIsNotValid,
    required TResult Function() validationFailurePhoneUnknown,
  }) {
    return validationFailurePhoneExists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function(String phone)? validationPhoneSuccess,
    TResult? Function()? validationFailurePhoneExists,
    TResult? Function()? validationFailurePhoneIsNotValid,
    TResult? Function()? validationFailurePhoneUnknown,
  }) {
    return validationFailurePhoneExists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function(String phone)? validationPhoneSuccess,
    TResult Function()? validationFailurePhoneExists,
    TResult Function()? validationFailurePhoneIsNotValid,
    TResult Function()? validationFailurePhoneUnknown,
    required TResult orElse(),
  }) {
    if (validationFailurePhoneExists != null) {
      return validationFailurePhoneExists();
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
    required TResult Function(_ValidationPhoneSuccess value)
        validationPhoneSuccess,
    required TResult Function(_ValidationFailurePhoneExists value)
        validationFailurePhoneExists,
    required TResult Function(_ValidationFailurePhoneIsNotValid value)
        validationFailurePhoneIsNotValid,
    required TResult Function(_ValidationFailurePhoneUnknown value)
        validationFailurePhoneUnknown,
  }) {
    return validationFailurePhoneExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_ValidationPhoneSuccess value)? validationPhoneSuccess,
    TResult? Function(_ValidationFailurePhoneExists value)?
        validationFailurePhoneExists,
    TResult? Function(_ValidationFailurePhoneIsNotValid value)?
        validationFailurePhoneIsNotValid,
    TResult? Function(_ValidationFailurePhoneUnknown value)?
        validationFailurePhoneUnknown,
  }) {
    return validationFailurePhoneExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_ValidationPhoneSuccess value)? validationPhoneSuccess,
    TResult Function(_ValidationFailurePhoneExists value)?
        validationFailurePhoneExists,
    TResult Function(_ValidationFailurePhoneIsNotValid value)?
        validationFailurePhoneIsNotValid,
    TResult Function(_ValidationFailurePhoneUnknown value)?
        validationFailurePhoneUnknown,
    required TResult orElse(),
  }) {
    if (validationFailurePhoneExists != null) {
      return validationFailurePhoneExists(this);
    }
    return orElse();
  }
}

abstract class _ValidationFailurePhoneExists implements PhoneState {
  const factory _ValidationFailurePhoneExists() =
      _$_ValidationFailurePhoneExists;
}

/// @nodoc
abstract class _$$_ValidationFailurePhoneIsNotValidCopyWith<$Res> {
  factory _$$_ValidationFailurePhoneIsNotValidCopyWith(
          _$_ValidationFailurePhoneIsNotValid value,
          $Res Function(_$_ValidationFailurePhoneIsNotValid) then) =
      __$$_ValidationFailurePhoneIsNotValidCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ValidationFailurePhoneIsNotValidCopyWithImpl<$Res>
    extends _$PhoneStateCopyWithImpl<$Res, _$_ValidationFailurePhoneIsNotValid>
    implements _$$_ValidationFailurePhoneIsNotValidCopyWith<$Res> {
  __$$_ValidationFailurePhoneIsNotValidCopyWithImpl(
      _$_ValidationFailurePhoneIsNotValid _value,
      $Res Function(_$_ValidationFailurePhoneIsNotValid) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ValidationFailurePhoneIsNotValid
    implements _ValidationFailurePhoneIsNotValid {
  const _$_ValidationFailurePhoneIsNotValid();

  @override
  String toString() {
    return 'PhoneState.validationFailurePhoneIsNotValid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidationFailurePhoneIsNotValid);
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
    required TResult Function(String phone) validationPhoneSuccess,
    required TResult Function() validationFailurePhoneExists,
    required TResult Function() validationFailurePhoneIsNotValid,
    required TResult Function() validationFailurePhoneUnknown,
  }) {
    return validationFailurePhoneIsNotValid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function(String phone)? validationPhoneSuccess,
    TResult? Function()? validationFailurePhoneExists,
    TResult? Function()? validationFailurePhoneIsNotValid,
    TResult? Function()? validationFailurePhoneUnknown,
  }) {
    return validationFailurePhoneIsNotValid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function(String phone)? validationPhoneSuccess,
    TResult Function()? validationFailurePhoneExists,
    TResult Function()? validationFailurePhoneIsNotValid,
    TResult Function()? validationFailurePhoneUnknown,
    required TResult orElse(),
  }) {
    if (validationFailurePhoneIsNotValid != null) {
      return validationFailurePhoneIsNotValid();
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
    required TResult Function(_ValidationPhoneSuccess value)
        validationPhoneSuccess,
    required TResult Function(_ValidationFailurePhoneExists value)
        validationFailurePhoneExists,
    required TResult Function(_ValidationFailurePhoneIsNotValid value)
        validationFailurePhoneIsNotValid,
    required TResult Function(_ValidationFailurePhoneUnknown value)
        validationFailurePhoneUnknown,
  }) {
    return validationFailurePhoneIsNotValid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_ValidationPhoneSuccess value)? validationPhoneSuccess,
    TResult? Function(_ValidationFailurePhoneExists value)?
        validationFailurePhoneExists,
    TResult? Function(_ValidationFailurePhoneIsNotValid value)?
        validationFailurePhoneIsNotValid,
    TResult? Function(_ValidationFailurePhoneUnknown value)?
        validationFailurePhoneUnknown,
  }) {
    return validationFailurePhoneIsNotValid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_ValidationPhoneSuccess value)? validationPhoneSuccess,
    TResult Function(_ValidationFailurePhoneExists value)?
        validationFailurePhoneExists,
    TResult Function(_ValidationFailurePhoneIsNotValid value)?
        validationFailurePhoneIsNotValid,
    TResult Function(_ValidationFailurePhoneUnknown value)?
        validationFailurePhoneUnknown,
    required TResult orElse(),
  }) {
    if (validationFailurePhoneIsNotValid != null) {
      return validationFailurePhoneIsNotValid(this);
    }
    return orElse();
  }
}

abstract class _ValidationFailurePhoneIsNotValid implements PhoneState {
  const factory _ValidationFailurePhoneIsNotValid() =
      _$_ValidationFailurePhoneIsNotValid;
}

/// @nodoc
abstract class _$$_ValidationFailurePhoneUnknownCopyWith<$Res> {
  factory _$$_ValidationFailurePhoneUnknownCopyWith(
          _$_ValidationFailurePhoneUnknown value,
          $Res Function(_$_ValidationFailurePhoneUnknown) then) =
      __$$_ValidationFailurePhoneUnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ValidationFailurePhoneUnknownCopyWithImpl<$Res>
    extends _$PhoneStateCopyWithImpl<$Res, _$_ValidationFailurePhoneUnknown>
    implements _$$_ValidationFailurePhoneUnknownCopyWith<$Res> {
  __$$_ValidationFailurePhoneUnknownCopyWithImpl(
      _$_ValidationFailurePhoneUnknown _value,
      $Res Function(_$_ValidationFailurePhoneUnknown) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ValidationFailurePhoneUnknown
    implements _ValidationFailurePhoneUnknown {
  const _$_ValidationFailurePhoneUnknown();

  @override
  String toString() {
    return 'PhoneState.validationFailurePhoneUnknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidationFailurePhoneUnknown);
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
    required TResult Function(String phone) validationPhoneSuccess,
    required TResult Function() validationFailurePhoneExists,
    required TResult Function() validationFailurePhoneIsNotValid,
    required TResult Function() validationFailurePhoneUnknown,
  }) {
    return validationFailurePhoneUnknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function(String phone)? validationPhoneSuccess,
    TResult? Function()? validationFailurePhoneExists,
    TResult? Function()? validationFailurePhoneIsNotValid,
    TResult? Function()? validationFailurePhoneUnknown,
  }) {
    return validationFailurePhoneUnknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function(String phone)? validationPhoneSuccess,
    TResult Function()? validationFailurePhoneExists,
    TResult Function()? validationFailurePhoneIsNotValid,
    TResult Function()? validationFailurePhoneUnknown,
    required TResult orElse(),
  }) {
    if (validationFailurePhoneUnknown != null) {
      return validationFailurePhoneUnknown();
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
    required TResult Function(_ValidationPhoneSuccess value)
        validationPhoneSuccess,
    required TResult Function(_ValidationFailurePhoneExists value)
        validationFailurePhoneExists,
    required TResult Function(_ValidationFailurePhoneIsNotValid value)
        validationFailurePhoneIsNotValid,
    required TResult Function(_ValidationFailurePhoneUnknown value)
        validationFailurePhoneUnknown,
  }) {
    return validationFailurePhoneUnknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_ValidationPhoneSuccess value)? validationPhoneSuccess,
    TResult? Function(_ValidationFailurePhoneExists value)?
        validationFailurePhoneExists,
    TResult? Function(_ValidationFailurePhoneIsNotValid value)?
        validationFailurePhoneIsNotValid,
    TResult? Function(_ValidationFailurePhoneUnknown value)?
        validationFailurePhoneUnknown,
  }) {
    return validationFailurePhoneUnknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_ValidationPhoneSuccess value)? validationPhoneSuccess,
    TResult Function(_ValidationFailurePhoneExists value)?
        validationFailurePhoneExists,
    TResult Function(_ValidationFailurePhoneIsNotValid value)?
        validationFailurePhoneIsNotValid,
    TResult Function(_ValidationFailurePhoneUnknown value)?
        validationFailurePhoneUnknown,
    required TResult orElse(),
  }) {
    if (validationFailurePhoneUnknown != null) {
      return validationFailurePhoneUnknown(this);
    }
    return orElse();
  }
}

abstract class _ValidationFailurePhoneUnknown implements PhoneState {
  const factory _ValidationFailurePhoneUnknown() =
      _$_ValidationFailurePhoneUnknown;
}
