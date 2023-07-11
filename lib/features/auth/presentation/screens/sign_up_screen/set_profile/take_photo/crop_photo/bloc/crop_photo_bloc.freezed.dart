// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crop_photo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CropPhotoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GlobalKey<State<StatefulWidget>> cropperKey)
        cropPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GlobalKey<State<StatefulWidget>> cropperKey)? cropPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GlobalKey<State<StatefulWidget>> cropperKey)? cropPhoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CropPhoto value) cropPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CropPhoto value)? cropPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CropPhoto value)? cropPhoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CropPhotoEventCopyWith<$Res> {
  factory $CropPhotoEventCopyWith(
          CropPhotoEvent value, $Res Function(CropPhotoEvent) then) =
      _$CropPhotoEventCopyWithImpl<$Res, CropPhotoEvent>;
}

/// @nodoc
class _$CropPhotoEventCopyWithImpl<$Res, $Val extends CropPhotoEvent>
    implements $CropPhotoEventCopyWith<$Res> {
  _$CropPhotoEventCopyWithImpl(this._value, this._then);

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
    extends _$CropPhotoEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CropPhotoEvent.started()';
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
    required TResult Function(GlobalKey<State<StatefulWidget>> cropperKey)
        cropPhoto,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GlobalKey<State<StatefulWidget>> cropperKey)? cropPhoto,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GlobalKey<State<StatefulWidget>> cropperKey)? cropPhoto,
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
    required TResult Function(_CropPhoto value) cropPhoto,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CropPhoto value)? cropPhoto,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CropPhoto value)? cropPhoto,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CropPhotoEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_CropPhotoCopyWith<$Res> {
  factory _$$_CropPhotoCopyWith(
          _$_CropPhoto value, $Res Function(_$_CropPhoto) then) =
      __$$_CropPhotoCopyWithImpl<$Res>;
  @useResult
  $Res call({GlobalKey<State<StatefulWidget>> cropperKey});
}

/// @nodoc
class __$$_CropPhotoCopyWithImpl<$Res>
    extends _$CropPhotoEventCopyWithImpl<$Res, _$_CropPhoto>
    implements _$$_CropPhotoCopyWith<$Res> {
  __$$_CropPhotoCopyWithImpl(
      _$_CropPhoto _value, $Res Function(_$_CropPhoto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cropperKey = null,
  }) {
    return _then(_$_CropPhoto(
      null == cropperKey
          ? _value.cropperKey
          : cropperKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<State<StatefulWidget>>,
    ));
  }
}

/// @nodoc

class _$_CropPhoto implements _CropPhoto {
  const _$_CropPhoto(this.cropperKey);

  @override
  final GlobalKey<State<StatefulWidget>> cropperKey;

  @override
  String toString() {
    return 'CropPhotoEvent.cropPhoto(cropperKey: $cropperKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CropPhoto &&
            (identical(other.cropperKey, cropperKey) ||
                other.cropperKey == cropperKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cropperKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CropPhotoCopyWith<_$_CropPhoto> get copyWith =>
      __$$_CropPhotoCopyWithImpl<_$_CropPhoto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GlobalKey<State<StatefulWidget>> cropperKey)
        cropPhoto,
  }) {
    return cropPhoto(cropperKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GlobalKey<State<StatefulWidget>> cropperKey)? cropPhoto,
  }) {
    return cropPhoto?.call(cropperKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GlobalKey<State<StatefulWidget>> cropperKey)? cropPhoto,
    required TResult orElse(),
  }) {
    if (cropPhoto != null) {
      return cropPhoto(cropperKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CropPhoto value) cropPhoto,
  }) {
    return cropPhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CropPhoto value)? cropPhoto,
  }) {
    return cropPhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CropPhoto value)? cropPhoto,
    required TResult orElse(),
  }) {
    if (cropPhoto != null) {
      return cropPhoto(this);
    }
    return orElse();
  }
}

abstract class _CropPhoto implements CropPhotoEvent {
  const factory _CropPhoto(final GlobalKey<State<StatefulWidget>> cropperKey) =
      _$_CropPhoto;

  GlobalKey<State<StatefulWidget>> get cropperKey;
  @JsonKey(ignore: true)
  _$$_CropPhotoCopyWith<_$_CropPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CropPhotoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Uint8List croppedPhotoBytes) croppedPhotoReady,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Uint8List croppedPhotoBytes)? croppedPhotoReady,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Uint8List croppedPhotoBytes)? croppedPhotoReady,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CroppedPhotoReady value) croppedPhotoReady,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CroppedPhotoReady value)? croppedPhotoReady,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CroppedPhotoReady value)? croppedPhotoReady,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CropPhotoStateCopyWith<$Res> {
  factory $CropPhotoStateCopyWith(
          CropPhotoState value, $Res Function(CropPhotoState) then) =
      _$CropPhotoStateCopyWithImpl<$Res, CropPhotoState>;
}

/// @nodoc
class _$CropPhotoStateCopyWithImpl<$Res, $Val extends CropPhotoState>
    implements $CropPhotoStateCopyWith<$Res> {
  _$CropPhotoStateCopyWithImpl(this._value, this._then);

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
    extends _$CropPhotoStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CropPhotoState.initial()';
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
    required TResult Function(Uint8List croppedPhotoBytes) croppedPhotoReady,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Uint8List croppedPhotoBytes)? croppedPhotoReady,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Uint8List croppedPhotoBytes)? croppedPhotoReady,
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
    required TResult Function(_CroppedPhotoReady value) croppedPhotoReady,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CroppedPhotoReady value)? croppedPhotoReady,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CroppedPhotoReady value)? croppedPhotoReady,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CropPhotoState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_CroppedPhotoReadyCopyWith<$Res> {
  factory _$$_CroppedPhotoReadyCopyWith(_$_CroppedPhotoReady value,
          $Res Function(_$_CroppedPhotoReady) then) =
      __$$_CroppedPhotoReadyCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List croppedPhotoBytes});
}

/// @nodoc
class __$$_CroppedPhotoReadyCopyWithImpl<$Res>
    extends _$CropPhotoStateCopyWithImpl<$Res, _$_CroppedPhotoReady>
    implements _$$_CroppedPhotoReadyCopyWith<$Res> {
  __$$_CroppedPhotoReadyCopyWithImpl(
      _$_CroppedPhotoReady _value, $Res Function(_$_CroppedPhotoReady) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? croppedPhotoBytes = null,
  }) {
    return _then(_$_CroppedPhotoReady(
      null == croppedPhotoBytes
          ? _value.croppedPhotoBytes
          : croppedPhotoBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$_CroppedPhotoReady implements _CroppedPhotoReady {
  const _$_CroppedPhotoReady(this.croppedPhotoBytes);

  @override
  final Uint8List croppedPhotoBytes;

  @override
  String toString() {
    return 'CropPhotoState.croppedPhotoReady(croppedPhotoBytes: $croppedPhotoBytes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CroppedPhotoReady &&
            const DeepCollectionEquality()
                .equals(other.croppedPhotoBytes, croppedPhotoBytes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(croppedPhotoBytes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CroppedPhotoReadyCopyWith<_$_CroppedPhotoReady> get copyWith =>
      __$$_CroppedPhotoReadyCopyWithImpl<_$_CroppedPhotoReady>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Uint8List croppedPhotoBytes) croppedPhotoReady,
  }) {
    return croppedPhotoReady(croppedPhotoBytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Uint8List croppedPhotoBytes)? croppedPhotoReady,
  }) {
    return croppedPhotoReady?.call(croppedPhotoBytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Uint8List croppedPhotoBytes)? croppedPhotoReady,
    required TResult orElse(),
  }) {
    if (croppedPhotoReady != null) {
      return croppedPhotoReady(croppedPhotoBytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CroppedPhotoReady value) croppedPhotoReady,
  }) {
    return croppedPhotoReady(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CroppedPhotoReady value)? croppedPhotoReady,
  }) {
    return croppedPhotoReady?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CroppedPhotoReady value)? croppedPhotoReady,
    required TResult orElse(),
  }) {
    if (croppedPhotoReady != null) {
      return croppedPhotoReady(this);
    }
    return orElse();
  }
}

abstract class _CroppedPhotoReady implements CropPhotoState {
  const factory _CroppedPhotoReady(final Uint8List croppedPhotoBytes) =
      _$_CroppedPhotoReady;

  Uint8List get croppedPhotoBytes;
  @JsonKey(ignore: true)
  _$$_CroppedPhotoReadyCopyWith<_$_CroppedPhotoReady> get copyWith =>
      throw _privateConstructorUsedError;
}
