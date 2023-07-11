// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_photo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddPhotoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() changePhoto,
    required TResult Function() deletePhoto,
    required TResult Function(Uint8List imageBytes) validatePhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? changePhoto,
    TResult? Function()? deletePhoto,
    TResult? Function(Uint8List imageBytes)? validatePhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? changePhoto,
    TResult Function()? deletePhoto,
    TResult Function(Uint8List imageBytes)? validatePhoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePhoto value) changePhoto,
    required TResult Function(_DeletePhoto value) deletePhoto,
    required TResult Function(_ValidatePhoto value) validatePhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangePhoto value)? changePhoto,
    TResult? Function(_DeletePhoto value)? deletePhoto,
    TResult? Function(_ValidatePhoto value)? validatePhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePhoto value)? changePhoto,
    TResult Function(_DeletePhoto value)? deletePhoto,
    TResult Function(_ValidatePhoto value)? validatePhoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPhotoEventCopyWith<$Res> {
  factory $AddPhotoEventCopyWith(
          AddPhotoEvent value, $Res Function(AddPhotoEvent) then) =
      _$AddPhotoEventCopyWithImpl<$Res, AddPhotoEvent>;
}

/// @nodoc
class _$AddPhotoEventCopyWithImpl<$Res, $Val extends AddPhotoEvent>
    implements $AddPhotoEventCopyWith<$Res> {
  _$AddPhotoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AddPhotoEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AddPhotoEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() changePhoto,
    required TResult Function() deletePhoto,
    required TResult Function(Uint8List imageBytes) validatePhoto,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? changePhoto,
    TResult? Function()? deletePhoto,
    TResult? Function(Uint8List imageBytes)? validatePhoto,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? changePhoto,
    TResult Function()? deletePhoto,
    TResult Function(Uint8List imageBytes)? validatePhoto,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePhoto value) changePhoto,
    required TResult Function(_DeletePhoto value) deletePhoto,
    required TResult Function(_ValidatePhoto value) validatePhoto,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangePhoto value)? changePhoto,
    TResult? Function(_DeletePhoto value)? deletePhoto,
    TResult? Function(_ValidatePhoto value)? validatePhoto,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePhoto value)? changePhoto,
    TResult Function(_DeletePhoto value)? deletePhoto,
    TResult Function(_ValidatePhoto value)? validatePhoto,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AddPhotoEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_ChangePhotoCopyWith<$Res> {
  factory _$$_ChangePhotoCopyWith(
          _$_ChangePhoto value, $Res Function(_$_ChangePhoto) then) =
      __$$_ChangePhotoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ChangePhotoCopyWithImpl<$Res>
    extends _$AddPhotoEventCopyWithImpl<$Res, _$_ChangePhoto>
    implements _$$_ChangePhotoCopyWith<$Res> {
  __$$_ChangePhotoCopyWithImpl(
      _$_ChangePhoto _value, $Res Function(_$_ChangePhoto) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ChangePhoto implements _ChangePhoto {
  const _$_ChangePhoto();

  @override
  String toString() {
    return 'AddPhotoEvent.changePhoto()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ChangePhoto);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() changePhoto,
    required TResult Function() deletePhoto,
    required TResult Function(Uint8List imageBytes) validatePhoto,
  }) {
    return changePhoto();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? changePhoto,
    TResult? Function()? deletePhoto,
    TResult? Function(Uint8List imageBytes)? validatePhoto,
  }) {
    return changePhoto?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? changePhoto,
    TResult Function()? deletePhoto,
    TResult Function(Uint8List imageBytes)? validatePhoto,
    required TResult orElse(),
  }) {
    if (changePhoto != null) {
      return changePhoto();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePhoto value) changePhoto,
    required TResult Function(_DeletePhoto value) deletePhoto,
    required TResult Function(_ValidatePhoto value) validatePhoto,
  }) {
    return changePhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangePhoto value)? changePhoto,
    TResult? Function(_DeletePhoto value)? deletePhoto,
    TResult? Function(_ValidatePhoto value)? validatePhoto,
  }) {
    return changePhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePhoto value)? changePhoto,
    TResult Function(_DeletePhoto value)? deletePhoto,
    TResult Function(_ValidatePhoto value)? validatePhoto,
    required TResult orElse(),
  }) {
    if (changePhoto != null) {
      return changePhoto(this);
    }
    return orElse();
  }
}

abstract class _ChangePhoto implements AddPhotoEvent {
  const factory _ChangePhoto() = _$_ChangePhoto;
}

/// @nodoc
abstract class _$$_DeletePhotoCopyWith<$Res> {
  factory _$$_DeletePhotoCopyWith(
          _$_DeletePhoto value, $Res Function(_$_DeletePhoto) then) =
      __$$_DeletePhotoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeletePhotoCopyWithImpl<$Res>
    extends _$AddPhotoEventCopyWithImpl<$Res, _$_DeletePhoto>
    implements _$$_DeletePhotoCopyWith<$Res> {
  __$$_DeletePhotoCopyWithImpl(
      _$_DeletePhoto _value, $Res Function(_$_DeletePhoto) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeletePhoto implements _DeletePhoto {
  const _$_DeletePhoto();

  @override
  String toString() {
    return 'AddPhotoEvent.deletePhoto()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeletePhoto);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() changePhoto,
    required TResult Function() deletePhoto,
    required TResult Function(Uint8List imageBytes) validatePhoto,
  }) {
    return deletePhoto();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? changePhoto,
    TResult? Function()? deletePhoto,
    TResult? Function(Uint8List imageBytes)? validatePhoto,
  }) {
    return deletePhoto?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? changePhoto,
    TResult Function()? deletePhoto,
    TResult Function(Uint8List imageBytes)? validatePhoto,
    required TResult orElse(),
  }) {
    if (deletePhoto != null) {
      return deletePhoto();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePhoto value) changePhoto,
    required TResult Function(_DeletePhoto value) deletePhoto,
    required TResult Function(_ValidatePhoto value) validatePhoto,
  }) {
    return deletePhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangePhoto value)? changePhoto,
    TResult? Function(_DeletePhoto value)? deletePhoto,
    TResult? Function(_ValidatePhoto value)? validatePhoto,
  }) {
    return deletePhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePhoto value)? changePhoto,
    TResult Function(_DeletePhoto value)? deletePhoto,
    TResult Function(_ValidatePhoto value)? validatePhoto,
    required TResult orElse(),
  }) {
    if (deletePhoto != null) {
      return deletePhoto(this);
    }
    return orElse();
  }
}

abstract class _DeletePhoto implements AddPhotoEvent {
  const factory _DeletePhoto() = _$_DeletePhoto;
}

/// @nodoc
abstract class _$$_ValidatePhotoCopyWith<$Res> {
  factory _$$_ValidatePhotoCopyWith(
          _$_ValidatePhoto value, $Res Function(_$_ValidatePhoto) then) =
      __$$_ValidatePhotoCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List imageBytes});
}

/// @nodoc
class __$$_ValidatePhotoCopyWithImpl<$Res>
    extends _$AddPhotoEventCopyWithImpl<$Res, _$_ValidatePhoto>
    implements _$$_ValidatePhotoCopyWith<$Res> {
  __$$_ValidatePhotoCopyWithImpl(
      _$_ValidatePhoto _value, $Res Function(_$_ValidatePhoto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageBytes = null,
  }) {
    return _then(_$_ValidatePhoto(
      null == imageBytes
          ? _value.imageBytes
          : imageBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$_ValidatePhoto implements _ValidatePhoto {
  const _$_ValidatePhoto(this.imageBytes);

  @override
  final Uint8List imageBytes;

  @override
  String toString() {
    return 'AddPhotoEvent.validatePhoto(imageBytes: $imageBytes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidatePhoto &&
            const DeepCollectionEquality()
                .equals(other.imageBytes, imageBytes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageBytes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidatePhotoCopyWith<_$_ValidatePhoto> get copyWith =>
      __$$_ValidatePhotoCopyWithImpl<_$_ValidatePhoto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() changePhoto,
    required TResult Function() deletePhoto,
    required TResult Function(Uint8List imageBytes) validatePhoto,
  }) {
    return validatePhoto(imageBytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? changePhoto,
    TResult? Function()? deletePhoto,
    TResult? Function(Uint8List imageBytes)? validatePhoto,
  }) {
    return validatePhoto?.call(imageBytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? changePhoto,
    TResult Function()? deletePhoto,
    TResult Function(Uint8List imageBytes)? validatePhoto,
    required TResult orElse(),
  }) {
    if (validatePhoto != null) {
      return validatePhoto(imageBytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePhoto value) changePhoto,
    required TResult Function(_DeletePhoto value) deletePhoto,
    required TResult Function(_ValidatePhoto value) validatePhoto,
  }) {
    return validatePhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangePhoto value)? changePhoto,
    TResult? Function(_DeletePhoto value)? deletePhoto,
    TResult? Function(_ValidatePhoto value)? validatePhoto,
  }) {
    return validatePhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePhoto value)? changePhoto,
    TResult Function(_DeletePhoto value)? deletePhoto,
    TResult Function(_ValidatePhoto value)? validatePhoto,
    required TResult orElse(),
  }) {
    if (validatePhoto != null) {
      return validatePhoto(this);
    }
    return orElse();
  }
}

abstract class _ValidatePhoto implements AddPhotoEvent {
  const factory _ValidatePhoto(final Uint8List imageBytes) = _$_ValidatePhoto;

  Uint8List get imageBytes;
  @JsonKey(ignore: true)
  _$$_ValidatePhotoCopyWith<_$_ValidatePhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddPhotoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() succeed,
    required TResult Function() invalid,
    required TResult Function() changed,
    required TResult Function() deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? succeed,
    TResult? Function()? invalid,
    TResult? Function()? changed,
    TResult? Function()? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? succeed,
    TResult Function()? invalid,
    TResult Function()? changed,
    TResult Function()? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Succeed value) succeed,
    required TResult Function(_Invalid value) invalid,
    required TResult Function(_Changed value) changed,
    required TResult Function(_Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Succeed value)? succeed,
    TResult? Function(_Invalid value)? invalid,
    TResult? Function(_Changed value)? changed,
    TResult? Function(_Deleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Succeed value)? succeed,
    TResult Function(_Invalid value)? invalid,
    TResult Function(_Changed value)? changed,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPhotoStateCopyWith<$Res> {
  factory $AddPhotoStateCopyWith(
          AddPhotoState value, $Res Function(AddPhotoState) then) =
      _$AddPhotoStateCopyWithImpl<$Res, AddPhotoState>;
}

/// @nodoc
class _$AddPhotoStateCopyWithImpl<$Res, $Val extends AddPhotoState>
    implements $AddPhotoStateCopyWith<$Res> {
  _$AddPhotoStateCopyWithImpl(this._value, this._then);

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
    extends _$AddPhotoStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AddPhotoState.initial()';
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
    required TResult Function() succeed,
    required TResult Function() invalid,
    required TResult Function() changed,
    required TResult Function() deleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? succeed,
    TResult? Function()? invalid,
    TResult? Function()? changed,
    TResult? Function()? deleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? succeed,
    TResult Function()? invalid,
    TResult Function()? changed,
    TResult Function()? deleted,
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
    required TResult Function(_Succeed value) succeed,
    required TResult Function(_Invalid value) invalid,
    required TResult Function(_Changed value) changed,
    required TResult Function(_Deleted value) deleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Succeed value)? succeed,
    TResult? Function(_Invalid value)? invalid,
    TResult? Function(_Changed value)? changed,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Succeed value)? succeed,
    TResult Function(_Invalid value)? invalid,
    TResult Function(_Changed value)? changed,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddPhotoState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SucceedCopyWith<$Res> {
  factory _$$_SucceedCopyWith(
          _$_Succeed value, $Res Function(_$_Succeed) then) =
      __$$_SucceedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SucceedCopyWithImpl<$Res>
    extends _$AddPhotoStateCopyWithImpl<$Res, _$_Succeed>
    implements _$$_SucceedCopyWith<$Res> {
  __$$_SucceedCopyWithImpl(_$_Succeed _value, $Res Function(_$_Succeed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Succeed implements _Succeed {
  const _$_Succeed();

  @override
  String toString() {
    return 'AddPhotoState.succeed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Succeed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() succeed,
    required TResult Function() invalid,
    required TResult Function() changed,
    required TResult Function() deleted,
  }) {
    return succeed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? succeed,
    TResult? Function()? invalid,
    TResult? Function()? changed,
    TResult? Function()? deleted,
  }) {
    return succeed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? succeed,
    TResult Function()? invalid,
    TResult Function()? changed,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (succeed != null) {
      return succeed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Succeed value) succeed,
    required TResult Function(_Invalid value) invalid,
    required TResult Function(_Changed value) changed,
    required TResult Function(_Deleted value) deleted,
  }) {
    return succeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Succeed value)? succeed,
    TResult? Function(_Invalid value)? invalid,
    TResult? Function(_Changed value)? changed,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return succeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Succeed value)? succeed,
    TResult Function(_Invalid value)? invalid,
    TResult Function(_Changed value)? changed,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (succeed != null) {
      return succeed(this);
    }
    return orElse();
  }
}

abstract class _Succeed implements AddPhotoState {
  const factory _Succeed() = _$_Succeed;
}

/// @nodoc
abstract class _$$_InvalidCopyWith<$Res> {
  factory _$$_InvalidCopyWith(
          _$_Invalid value, $Res Function(_$_Invalid) then) =
      __$$_InvalidCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InvalidCopyWithImpl<$Res>
    extends _$AddPhotoStateCopyWithImpl<$Res, _$_Invalid>
    implements _$$_InvalidCopyWith<$Res> {
  __$$_InvalidCopyWithImpl(_$_Invalid _value, $Res Function(_$_Invalid) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Invalid implements _Invalid {
  const _$_Invalid();

  @override
  String toString() {
    return 'AddPhotoState.invalid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Invalid);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() succeed,
    required TResult Function() invalid,
    required TResult Function() changed,
    required TResult Function() deleted,
  }) {
    return invalid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? succeed,
    TResult? Function()? invalid,
    TResult? Function()? changed,
    TResult? Function()? deleted,
  }) {
    return invalid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? succeed,
    TResult Function()? invalid,
    TResult Function()? changed,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Succeed value) succeed,
    required TResult Function(_Invalid value) invalid,
    required TResult Function(_Changed value) changed,
    required TResult Function(_Deleted value) deleted,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Succeed value)? succeed,
    TResult? Function(_Invalid value)? invalid,
    TResult? Function(_Changed value)? changed,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Succeed value)? succeed,
    TResult Function(_Invalid value)? invalid,
    TResult Function(_Changed value)? changed,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _Invalid implements AddPhotoState {
  const factory _Invalid() = _$_Invalid;
}

/// @nodoc
abstract class _$$_ChangedCopyWith<$Res> {
  factory _$$_ChangedCopyWith(
          _$_Changed value, $Res Function(_$_Changed) then) =
      __$$_ChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ChangedCopyWithImpl<$Res>
    extends _$AddPhotoStateCopyWithImpl<$Res, _$_Changed>
    implements _$$_ChangedCopyWith<$Res> {
  __$$_ChangedCopyWithImpl(_$_Changed _value, $Res Function(_$_Changed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Changed implements _Changed {
  const _$_Changed();

  @override
  String toString() {
    return 'AddPhotoState.changed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Changed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() succeed,
    required TResult Function() invalid,
    required TResult Function() changed,
    required TResult Function() deleted,
  }) {
    return changed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? succeed,
    TResult? Function()? invalid,
    TResult? Function()? changed,
    TResult? Function()? deleted,
  }) {
    return changed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? succeed,
    TResult Function()? invalid,
    TResult Function()? changed,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Succeed value) succeed,
    required TResult Function(_Invalid value) invalid,
    required TResult Function(_Changed value) changed,
    required TResult Function(_Deleted value) deleted,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Succeed value)? succeed,
    TResult? Function(_Invalid value)? invalid,
    TResult? Function(_Changed value)? changed,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Succeed value)? succeed,
    TResult Function(_Invalid value)? invalid,
    TResult Function(_Changed value)? changed,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class _Changed implements AddPhotoState {
  const factory _Changed() = _$_Changed;
}

/// @nodoc
abstract class _$$_DeletedCopyWith<$Res> {
  factory _$$_DeletedCopyWith(
          _$_Deleted value, $Res Function(_$_Deleted) then) =
      __$$_DeletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeletedCopyWithImpl<$Res>
    extends _$AddPhotoStateCopyWithImpl<$Res, _$_Deleted>
    implements _$$_DeletedCopyWith<$Res> {
  __$$_DeletedCopyWithImpl(_$_Deleted _value, $Res Function(_$_Deleted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Deleted implements _Deleted {
  const _$_Deleted();

  @override
  String toString() {
    return 'AddPhotoState.deleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Deleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() succeed,
    required TResult Function() invalid,
    required TResult Function() changed,
    required TResult Function() deleted,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? succeed,
    TResult? Function()? invalid,
    TResult? Function()? changed,
    TResult? Function()? deleted,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? succeed,
    TResult Function()? invalid,
    TResult Function()? changed,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Succeed value) succeed,
    required TResult Function(_Invalid value) invalid,
    required TResult Function(_Changed value) changed,
    required TResult Function(_Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Succeed value)? succeed,
    TResult? Function(_Invalid value)? invalid,
    TResult? Function(_Changed value)? changed,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Succeed value)? succeed,
    TResult Function(_Invalid value)? invalid,
    TResult Function(_Changed value)? changed,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements AddPhotoState {
  const factory _Deleted() = _$_Deleted;
}
