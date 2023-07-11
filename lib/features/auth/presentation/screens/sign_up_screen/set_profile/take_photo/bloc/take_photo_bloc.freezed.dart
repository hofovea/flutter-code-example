// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'take_photo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TakePhotoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() takePhoto,
    required TResult Function() askPermission,
    required TResult Function() openSetting,
    required TResult Function(int direction) switchCamera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? takePhoto,
    TResult? Function()? askPermission,
    TResult? Function()? openSetting,
    TResult? Function(int direction)? switchCamera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? takePhoto,
    TResult Function()? askPermission,
    TResult Function()? openSetting,
    TResult Function(int direction)? switchCamera,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TakePhoto value) takePhoto,
    required TResult Function(_AskPermission value) askPermission,
    required TResult Function(_OpenSetting value) openSetting,
    required TResult Function(_SwitchCamera value) switchCamera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TakePhoto value)? takePhoto,
    TResult? Function(_AskPermission value)? askPermission,
    TResult? Function(_OpenSetting value)? openSetting,
    TResult? Function(_SwitchCamera value)? switchCamera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TakePhoto value)? takePhoto,
    TResult Function(_AskPermission value)? askPermission,
    TResult Function(_OpenSetting value)? openSetting,
    TResult Function(_SwitchCamera value)? switchCamera,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TakePhotoEventCopyWith<$Res> {
  factory $TakePhotoEventCopyWith(
          TakePhotoEvent value, $Res Function(TakePhotoEvent) then) =
      _$TakePhotoEventCopyWithImpl<$Res, TakePhotoEvent>;
}

/// @nodoc
class _$TakePhotoEventCopyWithImpl<$Res, $Val extends TakePhotoEvent>
    implements $TakePhotoEventCopyWith<$Res> {
  _$TakePhotoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TakePhotoCopyWith<$Res> {
  factory _$$_TakePhotoCopyWith(
          _$_TakePhoto value, $Res Function(_$_TakePhoto) then) =
      __$$_TakePhotoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TakePhotoCopyWithImpl<$Res>
    extends _$TakePhotoEventCopyWithImpl<$Res, _$_TakePhoto>
    implements _$$_TakePhotoCopyWith<$Res> {
  __$$_TakePhotoCopyWithImpl(
      _$_TakePhoto _value, $Res Function(_$_TakePhoto) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TakePhoto implements _TakePhoto {
  const _$_TakePhoto();

  @override
  String toString() {
    return 'TakePhotoEvent.takePhoto()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TakePhoto);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() takePhoto,
    required TResult Function() askPermission,
    required TResult Function() openSetting,
    required TResult Function(int direction) switchCamera,
  }) {
    return takePhoto();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? takePhoto,
    TResult? Function()? askPermission,
    TResult? Function()? openSetting,
    TResult? Function(int direction)? switchCamera,
  }) {
    return takePhoto?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? takePhoto,
    TResult Function()? askPermission,
    TResult Function()? openSetting,
    TResult Function(int direction)? switchCamera,
    required TResult orElse(),
  }) {
    if (takePhoto != null) {
      return takePhoto();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TakePhoto value) takePhoto,
    required TResult Function(_AskPermission value) askPermission,
    required TResult Function(_OpenSetting value) openSetting,
    required TResult Function(_SwitchCamera value) switchCamera,
  }) {
    return takePhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TakePhoto value)? takePhoto,
    TResult? Function(_AskPermission value)? askPermission,
    TResult? Function(_OpenSetting value)? openSetting,
    TResult? Function(_SwitchCamera value)? switchCamera,
  }) {
    return takePhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TakePhoto value)? takePhoto,
    TResult Function(_AskPermission value)? askPermission,
    TResult Function(_OpenSetting value)? openSetting,
    TResult Function(_SwitchCamera value)? switchCamera,
    required TResult orElse(),
  }) {
    if (takePhoto != null) {
      return takePhoto(this);
    }
    return orElse();
  }
}

abstract class _TakePhoto implements TakePhotoEvent {
  const factory _TakePhoto() = _$_TakePhoto;
}

/// @nodoc
abstract class _$$_AskPermissionCopyWith<$Res> {
  factory _$$_AskPermissionCopyWith(
          _$_AskPermission value, $Res Function(_$_AskPermission) then) =
      __$$_AskPermissionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AskPermissionCopyWithImpl<$Res>
    extends _$TakePhotoEventCopyWithImpl<$Res, _$_AskPermission>
    implements _$$_AskPermissionCopyWith<$Res> {
  __$$_AskPermissionCopyWithImpl(
      _$_AskPermission _value, $Res Function(_$_AskPermission) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AskPermission implements _AskPermission {
  const _$_AskPermission();

  @override
  String toString() {
    return 'TakePhotoEvent.askPermission()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AskPermission);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() takePhoto,
    required TResult Function() askPermission,
    required TResult Function() openSetting,
    required TResult Function(int direction) switchCamera,
  }) {
    return askPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? takePhoto,
    TResult? Function()? askPermission,
    TResult? Function()? openSetting,
    TResult? Function(int direction)? switchCamera,
  }) {
    return askPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? takePhoto,
    TResult Function()? askPermission,
    TResult Function()? openSetting,
    TResult Function(int direction)? switchCamera,
    required TResult orElse(),
  }) {
    if (askPermission != null) {
      return askPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TakePhoto value) takePhoto,
    required TResult Function(_AskPermission value) askPermission,
    required TResult Function(_OpenSetting value) openSetting,
    required TResult Function(_SwitchCamera value) switchCamera,
  }) {
    return askPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TakePhoto value)? takePhoto,
    TResult? Function(_AskPermission value)? askPermission,
    TResult? Function(_OpenSetting value)? openSetting,
    TResult? Function(_SwitchCamera value)? switchCamera,
  }) {
    return askPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TakePhoto value)? takePhoto,
    TResult Function(_AskPermission value)? askPermission,
    TResult Function(_OpenSetting value)? openSetting,
    TResult Function(_SwitchCamera value)? switchCamera,
    required TResult orElse(),
  }) {
    if (askPermission != null) {
      return askPermission(this);
    }
    return orElse();
  }
}

abstract class _AskPermission implements TakePhotoEvent {
  const factory _AskPermission() = _$_AskPermission;
}

/// @nodoc
abstract class _$$_OpenSettingCopyWith<$Res> {
  factory _$$_OpenSettingCopyWith(
          _$_OpenSetting value, $Res Function(_$_OpenSetting) then) =
      __$$_OpenSettingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OpenSettingCopyWithImpl<$Res>
    extends _$TakePhotoEventCopyWithImpl<$Res, _$_OpenSetting>
    implements _$$_OpenSettingCopyWith<$Res> {
  __$$_OpenSettingCopyWithImpl(
      _$_OpenSetting _value, $Res Function(_$_OpenSetting) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OpenSetting implements _OpenSetting {
  const _$_OpenSetting();

  @override
  String toString() {
    return 'TakePhotoEvent.openSetting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OpenSetting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() takePhoto,
    required TResult Function() askPermission,
    required TResult Function() openSetting,
    required TResult Function(int direction) switchCamera,
  }) {
    return openSetting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? takePhoto,
    TResult? Function()? askPermission,
    TResult? Function()? openSetting,
    TResult? Function(int direction)? switchCamera,
  }) {
    return openSetting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? takePhoto,
    TResult Function()? askPermission,
    TResult Function()? openSetting,
    TResult Function(int direction)? switchCamera,
    required TResult orElse(),
  }) {
    if (openSetting != null) {
      return openSetting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TakePhoto value) takePhoto,
    required TResult Function(_AskPermission value) askPermission,
    required TResult Function(_OpenSetting value) openSetting,
    required TResult Function(_SwitchCamera value) switchCamera,
  }) {
    return openSetting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TakePhoto value)? takePhoto,
    TResult? Function(_AskPermission value)? askPermission,
    TResult? Function(_OpenSetting value)? openSetting,
    TResult? Function(_SwitchCamera value)? switchCamera,
  }) {
    return openSetting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TakePhoto value)? takePhoto,
    TResult Function(_AskPermission value)? askPermission,
    TResult Function(_OpenSetting value)? openSetting,
    TResult Function(_SwitchCamera value)? switchCamera,
    required TResult orElse(),
  }) {
    if (openSetting != null) {
      return openSetting(this);
    }
    return orElse();
  }
}

abstract class _OpenSetting implements TakePhotoEvent {
  const factory _OpenSetting() = _$_OpenSetting;
}

/// @nodoc
abstract class _$$_SwitchCameraCopyWith<$Res> {
  factory _$$_SwitchCameraCopyWith(
          _$_SwitchCamera value, $Res Function(_$_SwitchCamera) then) =
      __$$_SwitchCameraCopyWithImpl<$Res>;
  @useResult
  $Res call({int direction});
}

/// @nodoc
class __$$_SwitchCameraCopyWithImpl<$Res>
    extends _$TakePhotoEventCopyWithImpl<$Res, _$_SwitchCamera>
    implements _$$_SwitchCameraCopyWith<$Res> {
  __$$_SwitchCameraCopyWithImpl(
      _$_SwitchCamera _value, $Res Function(_$_SwitchCamera) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
  }) {
    return _then(_$_SwitchCamera(
      null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SwitchCamera implements _SwitchCamera {
  const _$_SwitchCamera(this.direction);

  @override
  final int direction;

  @override
  String toString() {
    return 'TakePhotoEvent.switchCamera(direction: $direction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SwitchCamera &&
            (identical(other.direction, direction) ||
                other.direction == direction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, direction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SwitchCameraCopyWith<_$_SwitchCamera> get copyWith =>
      __$$_SwitchCameraCopyWithImpl<_$_SwitchCamera>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() takePhoto,
    required TResult Function() askPermission,
    required TResult Function() openSetting,
    required TResult Function(int direction) switchCamera,
  }) {
    return switchCamera(direction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? takePhoto,
    TResult? Function()? askPermission,
    TResult? Function()? openSetting,
    TResult? Function(int direction)? switchCamera,
  }) {
    return switchCamera?.call(direction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? takePhoto,
    TResult Function()? askPermission,
    TResult Function()? openSetting,
    TResult Function(int direction)? switchCamera,
    required TResult orElse(),
  }) {
    if (switchCamera != null) {
      return switchCamera(direction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TakePhoto value) takePhoto,
    required TResult Function(_AskPermission value) askPermission,
    required TResult Function(_OpenSetting value) openSetting,
    required TResult Function(_SwitchCamera value) switchCamera,
  }) {
    return switchCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TakePhoto value)? takePhoto,
    TResult? Function(_AskPermission value)? askPermission,
    TResult? Function(_OpenSetting value)? openSetting,
    TResult? Function(_SwitchCamera value)? switchCamera,
  }) {
    return switchCamera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TakePhoto value)? takePhoto,
    TResult Function(_AskPermission value)? askPermission,
    TResult Function(_OpenSetting value)? openSetting,
    TResult Function(_SwitchCamera value)? switchCamera,
    required TResult orElse(),
  }) {
    if (switchCamera != null) {
      return switchCamera(this);
    }
    return orElse();
  }
}

abstract class _SwitchCamera implements TakePhotoEvent {
  const factory _SwitchCamera(final int direction) = _$_SwitchCamera;

  int get direction;
  @JsonKey(ignore: true)
  _$$_SwitchCameraCopyWith<_$_SwitchCamera> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TakePhotoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() accessDenied,
    required TResult Function() accessGranted,
    required TResult Function() frontCamera,
    required TResult Function() backCamera,
    required TResult Function() photoTaken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? accessDenied,
    TResult? Function()? accessGranted,
    TResult? Function()? frontCamera,
    TResult? Function()? backCamera,
    TResult? Function()? photoTaken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accessDenied,
    TResult Function()? accessGranted,
    TResult Function()? frontCamera,
    TResult Function()? backCamera,
    TResult Function()? photoTaken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AccessDenied value) accessDenied,
    required TResult Function(_AccessGranted value) accessGranted,
    required TResult Function(_FrontCamera value) frontCamera,
    required TResult Function(_BackCamera value) backCamera,
    required TResult Function(_PhotoTaken value) photoTaken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccessDenied value)? accessDenied,
    TResult? Function(_AccessGranted value)? accessGranted,
    TResult? Function(_FrontCamera value)? frontCamera,
    TResult? Function(_BackCamera value)? backCamera,
    TResult? Function(_PhotoTaken value)? photoTaken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccessDenied value)? accessDenied,
    TResult Function(_AccessGranted value)? accessGranted,
    TResult Function(_FrontCamera value)? frontCamera,
    TResult Function(_BackCamera value)? backCamera,
    TResult Function(_PhotoTaken value)? photoTaken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TakePhotoStateCopyWith<$Res> {
  factory $TakePhotoStateCopyWith(
          TakePhotoState value, $Res Function(TakePhotoState) then) =
      _$TakePhotoStateCopyWithImpl<$Res, TakePhotoState>;
}

/// @nodoc
class _$TakePhotoStateCopyWithImpl<$Res, $Val extends TakePhotoState>
    implements $TakePhotoStateCopyWith<$Res> {
  _$TakePhotoStateCopyWithImpl(this._value, this._then);

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
    extends _$TakePhotoStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TakePhotoState.initial()';
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
    required TResult Function() accessDenied,
    required TResult Function() accessGranted,
    required TResult Function() frontCamera,
    required TResult Function() backCamera,
    required TResult Function() photoTaken,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? accessDenied,
    TResult? Function()? accessGranted,
    TResult? Function()? frontCamera,
    TResult? Function()? backCamera,
    TResult? Function()? photoTaken,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accessDenied,
    TResult Function()? accessGranted,
    TResult Function()? frontCamera,
    TResult Function()? backCamera,
    TResult Function()? photoTaken,
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
    required TResult Function(_AccessDenied value) accessDenied,
    required TResult Function(_AccessGranted value) accessGranted,
    required TResult Function(_FrontCamera value) frontCamera,
    required TResult Function(_BackCamera value) backCamera,
    required TResult Function(_PhotoTaken value) photoTaken,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccessDenied value)? accessDenied,
    TResult? Function(_AccessGranted value)? accessGranted,
    TResult? Function(_FrontCamera value)? frontCamera,
    TResult? Function(_BackCamera value)? backCamera,
    TResult? Function(_PhotoTaken value)? photoTaken,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccessDenied value)? accessDenied,
    TResult Function(_AccessGranted value)? accessGranted,
    TResult Function(_FrontCamera value)? frontCamera,
    TResult Function(_BackCamera value)? backCamera,
    TResult Function(_PhotoTaken value)? photoTaken,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TakePhotoState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_AccessDeniedCopyWith<$Res> {
  factory _$$_AccessDeniedCopyWith(
          _$_AccessDenied value, $Res Function(_$_AccessDenied) then) =
      __$$_AccessDeniedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccessDeniedCopyWithImpl<$Res>
    extends _$TakePhotoStateCopyWithImpl<$Res, _$_AccessDenied>
    implements _$$_AccessDeniedCopyWith<$Res> {
  __$$_AccessDeniedCopyWithImpl(
      _$_AccessDenied _value, $Res Function(_$_AccessDenied) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccessDenied implements _AccessDenied {
  const _$_AccessDenied();

  @override
  String toString() {
    return 'TakePhotoState.accessDenied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AccessDenied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() accessDenied,
    required TResult Function() accessGranted,
    required TResult Function() frontCamera,
    required TResult Function() backCamera,
    required TResult Function() photoTaken,
  }) {
    return accessDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? accessDenied,
    TResult? Function()? accessGranted,
    TResult? Function()? frontCamera,
    TResult? Function()? backCamera,
    TResult? Function()? photoTaken,
  }) {
    return accessDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accessDenied,
    TResult Function()? accessGranted,
    TResult Function()? frontCamera,
    TResult Function()? backCamera,
    TResult Function()? photoTaken,
    required TResult orElse(),
  }) {
    if (accessDenied != null) {
      return accessDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AccessDenied value) accessDenied,
    required TResult Function(_AccessGranted value) accessGranted,
    required TResult Function(_FrontCamera value) frontCamera,
    required TResult Function(_BackCamera value) backCamera,
    required TResult Function(_PhotoTaken value) photoTaken,
  }) {
    return accessDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccessDenied value)? accessDenied,
    TResult? Function(_AccessGranted value)? accessGranted,
    TResult? Function(_FrontCamera value)? frontCamera,
    TResult? Function(_BackCamera value)? backCamera,
    TResult? Function(_PhotoTaken value)? photoTaken,
  }) {
    return accessDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccessDenied value)? accessDenied,
    TResult Function(_AccessGranted value)? accessGranted,
    TResult Function(_FrontCamera value)? frontCamera,
    TResult Function(_BackCamera value)? backCamera,
    TResult Function(_PhotoTaken value)? photoTaken,
    required TResult orElse(),
  }) {
    if (accessDenied != null) {
      return accessDenied(this);
    }
    return orElse();
  }
}

abstract class _AccessDenied implements TakePhotoState {
  const factory _AccessDenied() = _$_AccessDenied;
}

/// @nodoc
abstract class _$$_AccessGrantedCopyWith<$Res> {
  factory _$$_AccessGrantedCopyWith(
          _$_AccessGranted value, $Res Function(_$_AccessGranted) then) =
      __$$_AccessGrantedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccessGrantedCopyWithImpl<$Res>
    extends _$TakePhotoStateCopyWithImpl<$Res, _$_AccessGranted>
    implements _$$_AccessGrantedCopyWith<$Res> {
  __$$_AccessGrantedCopyWithImpl(
      _$_AccessGranted _value, $Res Function(_$_AccessGranted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccessGranted implements _AccessGranted {
  const _$_AccessGranted();

  @override
  String toString() {
    return 'TakePhotoState.accessGranted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AccessGranted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() accessDenied,
    required TResult Function() accessGranted,
    required TResult Function() frontCamera,
    required TResult Function() backCamera,
    required TResult Function() photoTaken,
  }) {
    return accessGranted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? accessDenied,
    TResult? Function()? accessGranted,
    TResult? Function()? frontCamera,
    TResult? Function()? backCamera,
    TResult? Function()? photoTaken,
  }) {
    return accessGranted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accessDenied,
    TResult Function()? accessGranted,
    TResult Function()? frontCamera,
    TResult Function()? backCamera,
    TResult Function()? photoTaken,
    required TResult orElse(),
  }) {
    if (accessGranted != null) {
      return accessGranted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AccessDenied value) accessDenied,
    required TResult Function(_AccessGranted value) accessGranted,
    required TResult Function(_FrontCamera value) frontCamera,
    required TResult Function(_BackCamera value) backCamera,
    required TResult Function(_PhotoTaken value) photoTaken,
  }) {
    return accessGranted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccessDenied value)? accessDenied,
    TResult? Function(_AccessGranted value)? accessGranted,
    TResult? Function(_FrontCamera value)? frontCamera,
    TResult? Function(_BackCamera value)? backCamera,
    TResult? Function(_PhotoTaken value)? photoTaken,
  }) {
    return accessGranted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccessDenied value)? accessDenied,
    TResult Function(_AccessGranted value)? accessGranted,
    TResult Function(_FrontCamera value)? frontCamera,
    TResult Function(_BackCamera value)? backCamera,
    TResult Function(_PhotoTaken value)? photoTaken,
    required TResult orElse(),
  }) {
    if (accessGranted != null) {
      return accessGranted(this);
    }
    return orElse();
  }
}

abstract class _AccessGranted implements TakePhotoState {
  const factory _AccessGranted() = _$_AccessGranted;
}

/// @nodoc
abstract class _$$_FrontCameraCopyWith<$Res> {
  factory _$$_FrontCameraCopyWith(
          _$_FrontCamera value, $Res Function(_$_FrontCamera) then) =
      __$$_FrontCameraCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FrontCameraCopyWithImpl<$Res>
    extends _$TakePhotoStateCopyWithImpl<$Res, _$_FrontCamera>
    implements _$$_FrontCameraCopyWith<$Res> {
  __$$_FrontCameraCopyWithImpl(
      _$_FrontCamera _value, $Res Function(_$_FrontCamera) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FrontCamera implements _FrontCamera {
  const _$_FrontCamera();

  @override
  String toString() {
    return 'TakePhotoState.frontCamera()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FrontCamera);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() accessDenied,
    required TResult Function() accessGranted,
    required TResult Function() frontCamera,
    required TResult Function() backCamera,
    required TResult Function() photoTaken,
  }) {
    return frontCamera();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? accessDenied,
    TResult? Function()? accessGranted,
    TResult? Function()? frontCamera,
    TResult? Function()? backCamera,
    TResult? Function()? photoTaken,
  }) {
    return frontCamera?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accessDenied,
    TResult Function()? accessGranted,
    TResult Function()? frontCamera,
    TResult Function()? backCamera,
    TResult Function()? photoTaken,
    required TResult orElse(),
  }) {
    if (frontCamera != null) {
      return frontCamera();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AccessDenied value) accessDenied,
    required TResult Function(_AccessGranted value) accessGranted,
    required TResult Function(_FrontCamera value) frontCamera,
    required TResult Function(_BackCamera value) backCamera,
    required TResult Function(_PhotoTaken value) photoTaken,
  }) {
    return frontCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccessDenied value)? accessDenied,
    TResult? Function(_AccessGranted value)? accessGranted,
    TResult? Function(_FrontCamera value)? frontCamera,
    TResult? Function(_BackCamera value)? backCamera,
    TResult? Function(_PhotoTaken value)? photoTaken,
  }) {
    return frontCamera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccessDenied value)? accessDenied,
    TResult Function(_AccessGranted value)? accessGranted,
    TResult Function(_FrontCamera value)? frontCamera,
    TResult Function(_BackCamera value)? backCamera,
    TResult Function(_PhotoTaken value)? photoTaken,
    required TResult orElse(),
  }) {
    if (frontCamera != null) {
      return frontCamera(this);
    }
    return orElse();
  }
}

abstract class _FrontCamera implements TakePhotoState {
  const factory _FrontCamera() = _$_FrontCamera;
}

/// @nodoc
abstract class _$$_BackCameraCopyWith<$Res> {
  factory _$$_BackCameraCopyWith(
          _$_BackCamera value, $Res Function(_$_BackCamera) then) =
      __$$_BackCameraCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BackCameraCopyWithImpl<$Res>
    extends _$TakePhotoStateCopyWithImpl<$Res, _$_BackCamera>
    implements _$$_BackCameraCopyWith<$Res> {
  __$$_BackCameraCopyWithImpl(
      _$_BackCamera _value, $Res Function(_$_BackCamera) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_BackCamera implements _BackCamera {
  const _$_BackCamera();

  @override
  String toString() {
    return 'TakePhotoState.backCamera()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BackCamera);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() accessDenied,
    required TResult Function() accessGranted,
    required TResult Function() frontCamera,
    required TResult Function() backCamera,
    required TResult Function() photoTaken,
  }) {
    return backCamera();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? accessDenied,
    TResult? Function()? accessGranted,
    TResult? Function()? frontCamera,
    TResult? Function()? backCamera,
    TResult? Function()? photoTaken,
  }) {
    return backCamera?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accessDenied,
    TResult Function()? accessGranted,
    TResult Function()? frontCamera,
    TResult Function()? backCamera,
    TResult Function()? photoTaken,
    required TResult orElse(),
  }) {
    if (backCamera != null) {
      return backCamera();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AccessDenied value) accessDenied,
    required TResult Function(_AccessGranted value) accessGranted,
    required TResult Function(_FrontCamera value) frontCamera,
    required TResult Function(_BackCamera value) backCamera,
    required TResult Function(_PhotoTaken value) photoTaken,
  }) {
    return backCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccessDenied value)? accessDenied,
    TResult? Function(_AccessGranted value)? accessGranted,
    TResult? Function(_FrontCamera value)? frontCamera,
    TResult? Function(_BackCamera value)? backCamera,
    TResult? Function(_PhotoTaken value)? photoTaken,
  }) {
    return backCamera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccessDenied value)? accessDenied,
    TResult Function(_AccessGranted value)? accessGranted,
    TResult Function(_FrontCamera value)? frontCamera,
    TResult Function(_BackCamera value)? backCamera,
    TResult Function(_PhotoTaken value)? photoTaken,
    required TResult orElse(),
  }) {
    if (backCamera != null) {
      return backCamera(this);
    }
    return orElse();
  }
}

abstract class _BackCamera implements TakePhotoState {
  const factory _BackCamera() = _$_BackCamera;
}

/// @nodoc
abstract class _$$_PhotoTakenCopyWith<$Res> {
  factory _$$_PhotoTakenCopyWith(
          _$_PhotoTaken value, $Res Function(_$_PhotoTaken) then) =
      __$$_PhotoTakenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PhotoTakenCopyWithImpl<$Res>
    extends _$TakePhotoStateCopyWithImpl<$Res, _$_PhotoTaken>
    implements _$$_PhotoTakenCopyWith<$Res> {
  __$$_PhotoTakenCopyWithImpl(
      _$_PhotoTaken _value, $Res Function(_$_PhotoTaken) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PhotoTaken implements _PhotoTaken {
  const _$_PhotoTaken();

  @override
  String toString() {
    return 'TakePhotoState.photoTaken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PhotoTaken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() accessDenied,
    required TResult Function() accessGranted,
    required TResult Function() frontCamera,
    required TResult Function() backCamera,
    required TResult Function() photoTaken,
  }) {
    return photoTaken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? accessDenied,
    TResult? Function()? accessGranted,
    TResult? Function()? frontCamera,
    TResult? Function()? backCamera,
    TResult? Function()? photoTaken,
  }) {
    return photoTaken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accessDenied,
    TResult Function()? accessGranted,
    TResult Function()? frontCamera,
    TResult Function()? backCamera,
    TResult Function()? photoTaken,
    required TResult orElse(),
  }) {
    if (photoTaken != null) {
      return photoTaken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AccessDenied value) accessDenied,
    required TResult Function(_AccessGranted value) accessGranted,
    required TResult Function(_FrontCamera value) frontCamera,
    required TResult Function(_BackCamera value) backCamera,
    required TResult Function(_PhotoTaken value) photoTaken,
  }) {
    return photoTaken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccessDenied value)? accessDenied,
    TResult? Function(_AccessGranted value)? accessGranted,
    TResult? Function(_FrontCamera value)? frontCamera,
    TResult? Function(_BackCamera value)? backCamera,
    TResult? Function(_PhotoTaken value)? photoTaken,
  }) {
    return photoTaken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccessDenied value)? accessDenied,
    TResult Function(_AccessGranted value)? accessGranted,
    TResult Function(_FrontCamera value)? frontCamera,
    TResult Function(_BackCamera value)? backCamera,
    TResult Function(_PhotoTaken value)? photoTaken,
    required TResult orElse(),
  }) {
    if (photoTaken != null) {
      return photoTaken(this);
    }
    return orElse();
  }
}

abstract class _PhotoTaken implements TakePhotoState {
  const factory _PhotoTaken() = _$_PhotoTaken;
}
