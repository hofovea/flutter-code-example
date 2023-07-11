// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nickname_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NicknameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enableSubmit,
    required TResult Function() disableSubmit,
    required TResult Function(String nickname) trySubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enableSubmit,
    TResult? Function()? disableSubmit,
    TResult? Function(String nickname)? trySubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enableSubmit,
    TResult Function()? disableSubmit,
    TResult Function(String nickname)? trySubmit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnableSubmit value) enableSubmit,
    required TResult Function(_DisableSubmit value) disableSubmit,
    required TResult Function(_TrySubmit value) trySubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnableSubmit value)? enableSubmit,
    TResult? Function(_DisableSubmit value)? disableSubmit,
    TResult? Function(_TrySubmit value)? trySubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnableSubmit value)? enableSubmit,
    TResult Function(_DisableSubmit value)? disableSubmit,
    TResult Function(_TrySubmit value)? trySubmit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NicknameEventCopyWith<$Res> {
  factory $NicknameEventCopyWith(
          NicknameEvent value, $Res Function(NicknameEvent) then) =
      _$NicknameEventCopyWithImpl<$Res, NicknameEvent>;
}

/// @nodoc
class _$NicknameEventCopyWithImpl<$Res, $Val extends NicknameEvent>
    implements $NicknameEventCopyWith<$Res> {
  _$NicknameEventCopyWithImpl(this._value, this._then);

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
    extends _$NicknameEventCopyWithImpl<$Res, _$_EnableSubmit>
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
    return 'NicknameEvent.enableSubmit()';
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
    required TResult Function(String nickname) trySubmit,
  }) {
    return enableSubmit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enableSubmit,
    TResult? Function()? disableSubmit,
    TResult? Function(String nickname)? trySubmit,
  }) {
    return enableSubmit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enableSubmit,
    TResult Function()? disableSubmit,
    TResult Function(String nickname)? trySubmit,
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
    required TResult Function(_TrySubmit value) trySubmit,
  }) {
    return enableSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnableSubmit value)? enableSubmit,
    TResult? Function(_DisableSubmit value)? disableSubmit,
    TResult? Function(_TrySubmit value)? trySubmit,
  }) {
    return enableSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnableSubmit value)? enableSubmit,
    TResult Function(_DisableSubmit value)? disableSubmit,
    TResult Function(_TrySubmit value)? trySubmit,
    required TResult orElse(),
  }) {
    if (enableSubmit != null) {
      return enableSubmit(this);
    }
    return orElse();
  }
}

abstract class _EnableSubmit implements NicknameEvent {
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
    extends _$NicknameEventCopyWithImpl<$Res, _$_DisableSubmit>
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
    return 'NicknameEvent.disableSubmit()';
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
    required TResult Function(String nickname) trySubmit,
  }) {
    return disableSubmit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enableSubmit,
    TResult? Function()? disableSubmit,
    TResult? Function(String nickname)? trySubmit,
  }) {
    return disableSubmit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enableSubmit,
    TResult Function()? disableSubmit,
    TResult Function(String nickname)? trySubmit,
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
    required TResult Function(_TrySubmit value) trySubmit,
  }) {
    return disableSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnableSubmit value)? enableSubmit,
    TResult? Function(_DisableSubmit value)? disableSubmit,
    TResult? Function(_TrySubmit value)? trySubmit,
  }) {
    return disableSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnableSubmit value)? enableSubmit,
    TResult Function(_DisableSubmit value)? disableSubmit,
    TResult Function(_TrySubmit value)? trySubmit,
    required TResult orElse(),
  }) {
    if (disableSubmit != null) {
      return disableSubmit(this);
    }
    return orElse();
  }
}

abstract class _DisableSubmit implements NicknameEvent {
  const factory _DisableSubmit() = _$_DisableSubmit;
}

/// @nodoc
abstract class _$$_TrySubmitCopyWith<$Res> {
  factory _$$_TrySubmitCopyWith(
          _$_TrySubmit value, $Res Function(_$_TrySubmit) then) =
      __$$_TrySubmitCopyWithImpl<$Res>;
  @useResult
  $Res call({String nickname});
}

/// @nodoc
class __$$_TrySubmitCopyWithImpl<$Res>
    extends _$NicknameEventCopyWithImpl<$Res, _$_TrySubmit>
    implements _$$_TrySubmitCopyWith<$Res> {
  __$$_TrySubmitCopyWithImpl(
      _$_TrySubmit _value, $Res Function(_$_TrySubmit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
  }) {
    return _then(_$_TrySubmit(
      null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TrySubmit implements _TrySubmit {
  const _$_TrySubmit(this.nickname);

  @override
  final String nickname;

  @override
  String toString() {
    return 'NicknameEvent.trySubmit(nickname: $nickname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrySubmit &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nickname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrySubmitCopyWith<_$_TrySubmit> get copyWith =>
      __$$_TrySubmitCopyWithImpl<_$_TrySubmit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enableSubmit,
    required TResult Function() disableSubmit,
    required TResult Function(String nickname) trySubmit,
  }) {
    return trySubmit(nickname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enableSubmit,
    TResult? Function()? disableSubmit,
    TResult? Function(String nickname)? trySubmit,
  }) {
    return trySubmit?.call(nickname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enableSubmit,
    TResult Function()? disableSubmit,
    TResult Function(String nickname)? trySubmit,
    required TResult orElse(),
  }) {
    if (trySubmit != null) {
      return trySubmit(nickname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnableSubmit value) enableSubmit,
    required TResult Function(_DisableSubmit value) disableSubmit,
    required TResult Function(_TrySubmit value) trySubmit,
  }) {
    return trySubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnableSubmit value)? enableSubmit,
    TResult? Function(_DisableSubmit value)? disableSubmit,
    TResult? Function(_TrySubmit value)? trySubmit,
  }) {
    return trySubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnableSubmit value)? enableSubmit,
    TResult Function(_DisableSubmit value)? disableSubmit,
    TResult Function(_TrySubmit value)? trySubmit,
    required TResult orElse(),
  }) {
    if (trySubmit != null) {
      return trySubmit(this);
    }
    return orElse();
  }
}

abstract class _TrySubmit implements NicknameEvent {
  const factory _TrySubmit(final String nickname) = _$_TrySubmit;

  String get nickname;
  @JsonKey(ignore: true)
  _$$_TrySubmitCopyWith<_$_TrySubmit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NicknameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() enabledSubmit,
    required TResult Function() disabledSubmit,
    required TResult Function(String nickname) validationSuccess,
    required TResult Function() validationFailureNicknameExists,
    required TResult Function() validationFailureUnknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function(String nickname)? validationSuccess,
    TResult? Function()? validationFailureNicknameExists,
    TResult? Function()? validationFailureUnknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function(String nickname)? validationSuccess,
    TResult Function()? validationFailureNicknameExists,
    TResult Function()? validationFailureUnknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_EnabledSubmit value) enabledSubmit,
    required TResult Function(_DisabledSubmit value) disabledSubmit,
    required TResult Function(_ValidationSuccess value) validationSuccess,
    required TResult Function(_ValidationFailureNicknameExists value)
        validationFailureNicknameExists,
    required TResult Function(_ValidationFailureUnknown value)
        validationFailureUnknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_ValidationSuccess value)? validationSuccess,
    TResult? Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult? Function(_ValidationFailureUnknown value)?
        validationFailureUnknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_ValidationSuccess value)? validationSuccess,
    TResult Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult Function(_ValidationFailureUnknown value)? validationFailureUnknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NicknameStateCopyWith<$Res> {
  factory $NicknameStateCopyWith(
          NicknameState value, $Res Function(NicknameState) then) =
      _$NicknameStateCopyWithImpl<$Res, NicknameState>;
}

/// @nodoc
class _$NicknameStateCopyWithImpl<$Res, $Val extends NicknameState>
    implements $NicknameStateCopyWith<$Res> {
  _$NicknameStateCopyWithImpl(this._value, this._then);

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
    extends _$NicknameStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NicknameState.initial()';
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
    required TResult Function(String nickname) validationSuccess,
    required TResult Function() validationFailureNicknameExists,
    required TResult Function() validationFailureUnknown,
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
    TResult? Function(String nickname)? validationSuccess,
    TResult? Function()? validationFailureNicknameExists,
    TResult? Function()? validationFailureUnknown,
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
    TResult Function(String nickname)? validationSuccess,
    TResult Function()? validationFailureNicknameExists,
    TResult Function()? validationFailureUnknown,
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
    required TResult Function(_ValidationSuccess value) validationSuccess,
    required TResult Function(_ValidationFailureNicknameExists value)
        validationFailureNicknameExists,
    required TResult Function(_ValidationFailureUnknown value)
        validationFailureUnknown,
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
    TResult? Function(_ValidationSuccess value)? validationSuccess,
    TResult? Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult? Function(_ValidationFailureUnknown value)?
        validationFailureUnknown,
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
    TResult Function(_ValidationSuccess value)? validationSuccess,
    TResult Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult Function(_ValidationFailureUnknown value)? validationFailureUnknown,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NicknameState {
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
    extends _$NicknameStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'NicknameState.loading()';
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
    required TResult Function(String nickname) validationSuccess,
    required TResult Function() validationFailureNicknameExists,
    required TResult Function() validationFailureUnknown,
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
    TResult? Function(String nickname)? validationSuccess,
    TResult? Function()? validationFailureNicknameExists,
    TResult? Function()? validationFailureUnknown,
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
    TResult Function(String nickname)? validationSuccess,
    TResult Function()? validationFailureNicknameExists,
    TResult Function()? validationFailureUnknown,
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
    required TResult Function(_ValidationSuccess value) validationSuccess,
    required TResult Function(_ValidationFailureNicknameExists value)
        validationFailureNicknameExists,
    required TResult Function(_ValidationFailureUnknown value)
        validationFailureUnknown,
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
    TResult? Function(_ValidationSuccess value)? validationSuccess,
    TResult? Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult? Function(_ValidationFailureUnknown value)?
        validationFailureUnknown,
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
    TResult Function(_ValidationSuccess value)? validationSuccess,
    TResult Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult Function(_ValidationFailureUnknown value)? validationFailureUnknown,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NicknameState {
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
    extends _$NicknameStateCopyWithImpl<$Res, _$_EnabledSubmit>
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
    return 'NicknameState.enabledSubmit()';
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
    required TResult Function(String nickname) validationSuccess,
    required TResult Function() validationFailureNicknameExists,
    required TResult Function() validationFailureUnknown,
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
    TResult? Function(String nickname)? validationSuccess,
    TResult? Function()? validationFailureNicknameExists,
    TResult? Function()? validationFailureUnknown,
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
    TResult Function(String nickname)? validationSuccess,
    TResult Function()? validationFailureNicknameExists,
    TResult Function()? validationFailureUnknown,
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
    required TResult Function(_ValidationSuccess value) validationSuccess,
    required TResult Function(_ValidationFailureNicknameExists value)
        validationFailureNicknameExists,
    required TResult Function(_ValidationFailureUnknown value)
        validationFailureUnknown,
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
    TResult? Function(_ValidationSuccess value)? validationSuccess,
    TResult? Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult? Function(_ValidationFailureUnknown value)?
        validationFailureUnknown,
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
    TResult Function(_ValidationSuccess value)? validationSuccess,
    TResult Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult Function(_ValidationFailureUnknown value)? validationFailureUnknown,
    required TResult orElse(),
  }) {
    if (enabledSubmit != null) {
      return enabledSubmit(this);
    }
    return orElse();
  }
}

abstract class _EnabledSubmit implements NicknameState {
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
    extends _$NicknameStateCopyWithImpl<$Res, _$_DisabledSubmit>
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
    return 'NicknameState.disabledSubmit()';
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
    required TResult Function(String nickname) validationSuccess,
    required TResult Function() validationFailureNicknameExists,
    required TResult Function() validationFailureUnknown,
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
    TResult? Function(String nickname)? validationSuccess,
    TResult? Function()? validationFailureNicknameExists,
    TResult? Function()? validationFailureUnknown,
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
    TResult Function(String nickname)? validationSuccess,
    TResult Function()? validationFailureNicknameExists,
    TResult Function()? validationFailureUnknown,
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
    required TResult Function(_ValidationSuccess value) validationSuccess,
    required TResult Function(_ValidationFailureNicknameExists value)
        validationFailureNicknameExists,
    required TResult Function(_ValidationFailureUnknown value)
        validationFailureUnknown,
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
    TResult? Function(_ValidationSuccess value)? validationSuccess,
    TResult? Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult? Function(_ValidationFailureUnknown value)?
        validationFailureUnknown,
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
    TResult Function(_ValidationSuccess value)? validationSuccess,
    TResult Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult Function(_ValidationFailureUnknown value)? validationFailureUnknown,
    required TResult orElse(),
  }) {
    if (disabledSubmit != null) {
      return disabledSubmit(this);
    }
    return orElse();
  }
}

abstract class _DisabledSubmit implements NicknameState {
  const factory _DisabledSubmit() = _$_DisabledSubmit;
}

/// @nodoc
abstract class _$$_ValidationSuccessCopyWith<$Res> {
  factory _$$_ValidationSuccessCopyWith(_$_ValidationSuccess value,
          $Res Function(_$_ValidationSuccess) then) =
      __$$_ValidationSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String nickname});
}

/// @nodoc
class __$$_ValidationSuccessCopyWithImpl<$Res>
    extends _$NicknameStateCopyWithImpl<$Res, _$_ValidationSuccess>
    implements _$$_ValidationSuccessCopyWith<$Res> {
  __$$_ValidationSuccessCopyWithImpl(
      _$_ValidationSuccess _value, $Res Function(_$_ValidationSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
  }) {
    return _then(_$_ValidationSuccess(
      null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ValidationSuccess implements _ValidationSuccess {
  const _$_ValidationSuccess(this.nickname);

  @override
  final String nickname;

  @override
  String toString() {
    return 'NicknameState.validationSuccess(nickname: $nickname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidationSuccess &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nickname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidationSuccessCopyWith<_$_ValidationSuccess> get copyWith =>
      __$$_ValidationSuccessCopyWithImpl<_$_ValidationSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() enabledSubmit,
    required TResult Function() disabledSubmit,
    required TResult Function(String nickname) validationSuccess,
    required TResult Function() validationFailureNicknameExists,
    required TResult Function() validationFailureUnknown,
  }) {
    return validationSuccess(nickname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function(String nickname)? validationSuccess,
    TResult? Function()? validationFailureNicknameExists,
    TResult? Function()? validationFailureUnknown,
  }) {
    return validationSuccess?.call(nickname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function(String nickname)? validationSuccess,
    TResult Function()? validationFailureNicknameExists,
    TResult Function()? validationFailureUnknown,
    required TResult orElse(),
  }) {
    if (validationSuccess != null) {
      return validationSuccess(nickname);
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
    required TResult Function(_ValidationSuccess value) validationSuccess,
    required TResult Function(_ValidationFailureNicknameExists value)
        validationFailureNicknameExists,
    required TResult Function(_ValidationFailureUnknown value)
        validationFailureUnknown,
  }) {
    return validationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_ValidationSuccess value)? validationSuccess,
    TResult? Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult? Function(_ValidationFailureUnknown value)?
        validationFailureUnknown,
  }) {
    return validationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_ValidationSuccess value)? validationSuccess,
    TResult Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult Function(_ValidationFailureUnknown value)? validationFailureUnknown,
    required TResult orElse(),
  }) {
    if (validationSuccess != null) {
      return validationSuccess(this);
    }
    return orElse();
  }
}

abstract class _ValidationSuccess implements NicknameState {
  const factory _ValidationSuccess(final String nickname) =
      _$_ValidationSuccess;

  String get nickname;
  @JsonKey(ignore: true)
  _$$_ValidationSuccessCopyWith<_$_ValidationSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ValidationFailureNicknameExistsCopyWith<$Res> {
  factory _$$_ValidationFailureNicknameExistsCopyWith(
          _$_ValidationFailureNicknameExists value,
          $Res Function(_$_ValidationFailureNicknameExists) then) =
      __$$_ValidationFailureNicknameExistsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ValidationFailureNicknameExistsCopyWithImpl<$Res>
    extends _$NicknameStateCopyWithImpl<$Res,
        _$_ValidationFailureNicknameExists>
    implements _$$_ValidationFailureNicknameExistsCopyWith<$Res> {
  __$$_ValidationFailureNicknameExistsCopyWithImpl(
      _$_ValidationFailureNicknameExists _value,
      $Res Function(_$_ValidationFailureNicknameExists) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ValidationFailureNicknameExists
    implements _ValidationFailureNicknameExists {
  const _$_ValidationFailureNicknameExists();

  @override
  String toString() {
    return 'NicknameState.validationFailureNicknameExists()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidationFailureNicknameExists);
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
    required TResult Function(String nickname) validationSuccess,
    required TResult Function() validationFailureNicknameExists,
    required TResult Function() validationFailureUnknown,
  }) {
    return validationFailureNicknameExists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function(String nickname)? validationSuccess,
    TResult? Function()? validationFailureNicknameExists,
    TResult? Function()? validationFailureUnknown,
  }) {
    return validationFailureNicknameExists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function(String nickname)? validationSuccess,
    TResult Function()? validationFailureNicknameExists,
    TResult Function()? validationFailureUnknown,
    required TResult orElse(),
  }) {
    if (validationFailureNicknameExists != null) {
      return validationFailureNicknameExists();
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
    required TResult Function(_ValidationSuccess value) validationSuccess,
    required TResult Function(_ValidationFailureNicknameExists value)
        validationFailureNicknameExists,
    required TResult Function(_ValidationFailureUnknown value)
        validationFailureUnknown,
  }) {
    return validationFailureNicknameExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_ValidationSuccess value)? validationSuccess,
    TResult? Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult? Function(_ValidationFailureUnknown value)?
        validationFailureUnknown,
  }) {
    return validationFailureNicknameExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_ValidationSuccess value)? validationSuccess,
    TResult Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult Function(_ValidationFailureUnknown value)? validationFailureUnknown,
    required TResult orElse(),
  }) {
    if (validationFailureNicknameExists != null) {
      return validationFailureNicknameExists(this);
    }
    return orElse();
  }
}

abstract class _ValidationFailureNicknameExists implements NicknameState {
  const factory _ValidationFailureNicknameExists() =
      _$_ValidationFailureNicknameExists;
}

/// @nodoc
abstract class _$$_ValidationFailureUnknownCopyWith<$Res> {
  factory _$$_ValidationFailureUnknownCopyWith(
          _$_ValidationFailureUnknown value,
          $Res Function(_$_ValidationFailureUnknown) then) =
      __$$_ValidationFailureUnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ValidationFailureUnknownCopyWithImpl<$Res>
    extends _$NicknameStateCopyWithImpl<$Res, _$_ValidationFailureUnknown>
    implements _$$_ValidationFailureUnknownCopyWith<$Res> {
  __$$_ValidationFailureUnknownCopyWithImpl(_$_ValidationFailureUnknown _value,
      $Res Function(_$_ValidationFailureUnknown) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ValidationFailureUnknown implements _ValidationFailureUnknown {
  const _$_ValidationFailureUnknown();

  @override
  String toString() {
    return 'NicknameState.validationFailureUnknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidationFailureUnknown);
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
    required TResult Function(String nickname) validationSuccess,
    required TResult Function() validationFailureNicknameExists,
    required TResult Function() validationFailureUnknown,
  }) {
    return validationFailureUnknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? enabledSubmit,
    TResult? Function()? disabledSubmit,
    TResult? Function(String nickname)? validationSuccess,
    TResult? Function()? validationFailureNicknameExists,
    TResult? Function()? validationFailureUnknown,
  }) {
    return validationFailureUnknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? enabledSubmit,
    TResult Function()? disabledSubmit,
    TResult Function(String nickname)? validationSuccess,
    TResult Function()? validationFailureNicknameExists,
    TResult Function()? validationFailureUnknown,
    required TResult orElse(),
  }) {
    if (validationFailureUnknown != null) {
      return validationFailureUnknown();
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
    required TResult Function(_ValidationSuccess value) validationSuccess,
    required TResult Function(_ValidationFailureNicknameExists value)
        validationFailureNicknameExists,
    required TResult Function(_ValidationFailureUnknown value)
        validationFailureUnknown,
  }) {
    return validationFailureUnknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_EnabledSubmit value)? enabledSubmit,
    TResult? Function(_DisabledSubmit value)? disabledSubmit,
    TResult? Function(_ValidationSuccess value)? validationSuccess,
    TResult? Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult? Function(_ValidationFailureUnknown value)?
        validationFailureUnknown,
  }) {
    return validationFailureUnknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_EnabledSubmit value)? enabledSubmit,
    TResult Function(_DisabledSubmit value)? disabledSubmit,
    TResult Function(_ValidationSuccess value)? validationSuccess,
    TResult Function(_ValidationFailureNicknameExists value)?
        validationFailureNicknameExists,
    TResult Function(_ValidationFailureUnknown value)? validationFailureUnknown,
    required TResult orElse(),
  }) {
    if (validationFailureUnknown != null) {
      return validationFailureUnknown(this);
    }
    return orElse();
  }
}

abstract class _ValidationFailureUnknown implements NicknameState {
  const factory _ValidationFailureUnknown() = _$_ValidationFailureUnknown;
}
