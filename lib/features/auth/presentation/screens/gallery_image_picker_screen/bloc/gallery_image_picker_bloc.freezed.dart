// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gallery_image_picker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GalleryImagePickerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tryFetchPhotos,
    required TResult Function() openSetting,
    required TResult Function(GlobalKey<State<StatefulWidget>> cropperKey)
        cropPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tryFetchPhotos,
    TResult? Function()? openSetting,
    TResult? Function(GlobalKey<State<StatefulWidget>> cropperKey)? cropPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tryFetchPhotos,
    TResult Function()? openSetting,
    TResult Function(GlobalKey<State<StatefulWidget>> cropperKey)? cropPhoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TryFetchPhotos value) tryFetchPhotos,
    required TResult Function(_OpenSetting value) openSetting,
    required TResult Function(_CropPhoto value) cropPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TryFetchPhotos value)? tryFetchPhotos,
    TResult? Function(_OpenSetting value)? openSetting,
    TResult? Function(_CropPhoto value)? cropPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TryFetchPhotos value)? tryFetchPhotos,
    TResult Function(_OpenSetting value)? openSetting,
    TResult Function(_CropPhoto value)? cropPhoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryImagePickerEventCopyWith<$Res> {
  factory $GalleryImagePickerEventCopyWith(GalleryImagePickerEvent value,
          $Res Function(GalleryImagePickerEvent) then) =
      _$GalleryImagePickerEventCopyWithImpl<$Res, GalleryImagePickerEvent>;
}

/// @nodoc
class _$GalleryImagePickerEventCopyWithImpl<$Res,
        $Val extends GalleryImagePickerEvent>
    implements $GalleryImagePickerEventCopyWith<$Res> {
  _$GalleryImagePickerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TryFetchPhotosCopyWith<$Res> {
  factory _$$_TryFetchPhotosCopyWith(
          _$_TryFetchPhotos value, $Res Function(_$_TryFetchPhotos) then) =
      __$$_TryFetchPhotosCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TryFetchPhotosCopyWithImpl<$Res>
    extends _$GalleryImagePickerEventCopyWithImpl<$Res, _$_TryFetchPhotos>
    implements _$$_TryFetchPhotosCopyWith<$Res> {
  __$$_TryFetchPhotosCopyWithImpl(
      _$_TryFetchPhotos _value, $Res Function(_$_TryFetchPhotos) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TryFetchPhotos implements _TryFetchPhotos {
  const _$_TryFetchPhotos();

  @override
  String toString() {
    return 'GalleryImagePickerEvent.tryFetchPhotos()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TryFetchPhotos);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tryFetchPhotos,
    required TResult Function() openSetting,
    required TResult Function(GlobalKey<State<StatefulWidget>> cropperKey)
        cropPhoto,
  }) {
    return tryFetchPhotos();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tryFetchPhotos,
    TResult? Function()? openSetting,
    TResult? Function(GlobalKey<State<StatefulWidget>> cropperKey)? cropPhoto,
  }) {
    return tryFetchPhotos?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tryFetchPhotos,
    TResult Function()? openSetting,
    TResult Function(GlobalKey<State<StatefulWidget>> cropperKey)? cropPhoto,
    required TResult orElse(),
  }) {
    if (tryFetchPhotos != null) {
      return tryFetchPhotos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TryFetchPhotos value) tryFetchPhotos,
    required TResult Function(_OpenSetting value) openSetting,
    required TResult Function(_CropPhoto value) cropPhoto,
  }) {
    return tryFetchPhotos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TryFetchPhotos value)? tryFetchPhotos,
    TResult? Function(_OpenSetting value)? openSetting,
    TResult? Function(_CropPhoto value)? cropPhoto,
  }) {
    return tryFetchPhotos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TryFetchPhotos value)? tryFetchPhotos,
    TResult Function(_OpenSetting value)? openSetting,
    TResult Function(_CropPhoto value)? cropPhoto,
    required TResult orElse(),
  }) {
    if (tryFetchPhotos != null) {
      return tryFetchPhotos(this);
    }
    return orElse();
  }
}

abstract class _TryFetchPhotos implements GalleryImagePickerEvent {
  const factory _TryFetchPhotos() = _$_TryFetchPhotos;
}

/// @nodoc
abstract class _$$_OpenSettingCopyWith<$Res> {
  factory _$$_OpenSettingCopyWith(
          _$_OpenSetting value, $Res Function(_$_OpenSetting) then) =
      __$$_OpenSettingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OpenSettingCopyWithImpl<$Res>
    extends _$GalleryImagePickerEventCopyWithImpl<$Res, _$_OpenSetting>
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
    return 'GalleryImagePickerEvent.openSetting()';
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
    required TResult Function() tryFetchPhotos,
    required TResult Function() openSetting,
    required TResult Function(GlobalKey<State<StatefulWidget>> cropperKey)
        cropPhoto,
  }) {
    return openSetting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tryFetchPhotos,
    TResult? Function()? openSetting,
    TResult? Function(GlobalKey<State<StatefulWidget>> cropperKey)? cropPhoto,
  }) {
    return openSetting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tryFetchPhotos,
    TResult Function()? openSetting,
    TResult Function(GlobalKey<State<StatefulWidget>> cropperKey)? cropPhoto,
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
    required TResult Function(_TryFetchPhotos value) tryFetchPhotos,
    required TResult Function(_OpenSetting value) openSetting,
    required TResult Function(_CropPhoto value) cropPhoto,
  }) {
    return openSetting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TryFetchPhotos value)? tryFetchPhotos,
    TResult? Function(_OpenSetting value)? openSetting,
    TResult? Function(_CropPhoto value)? cropPhoto,
  }) {
    return openSetting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TryFetchPhotos value)? tryFetchPhotos,
    TResult Function(_OpenSetting value)? openSetting,
    TResult Function(_CropPhoto value)? cropPhoto,
    required TResult orElse(),
  }) {
    if (openSetting != null) {
      return openSetting(this);
    }
    return orElse();
  }
}

abstract class _OpenSetting implements GalleryImagePickerEvent {
  const factory _OpenSetting() = _$_OpenSetting;
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
    extends _$GalleryImagePickerEventCopyWithImpl<$Res, _$_CropPhoto>
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
    return 'GalleryImagePickerEvent.cropPhoto(cropperKey: $cropperKey)';
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
    required TResult Function() tryFetchPhotos,
    required TResult Function() openSetting,
    required TResult Function(GlobalKey<State<StatefulWidget>> cropperKey)
        cropPhoto,
  }) {
    return cropPhoto(cropperKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tryFetchPhotos,
    TResult? Function()? openSetting,
    TResult? Function(GlobalKey<State<StatefulWidget>> cropperKey)? cropPhoto,
  }) {
    return cropPhoto?.call(cropperKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tryFetchPhotos,
    TResult Function()? openSetting,
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
    required TResult Function(_TryFetchPhotos value) tryFetchPhotos,
    required TResult Function(_OpenSetting value) openSetting,
    required TResult Function(_CropPhoto value) cropPhoto,
  }) {
    return cropPhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TryFetchPhotos value)? tryFetchPhotos,
    TResult? Function(_OpenSetting value)? openSetting,
    TResult? Function(_CropPhoto value)? cropPhoto,
  }) {
    return cropPhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TryFetchPhotos value)? tryFetchPhotos,
    TResult Function(_OpenSetting value)? openSetting,
    TResult Function(_CropPhoto value)? cropPhoto,
    required TResult orElse(),
  }) {
    if (cropPhoto != null) {
      return cropPhoto(this);
    }
    return orElse();
  }
}

abstract class _CropPhoto implements GalleryImagePickerEvent {
  const factory _CropPhoto(final GlobalKey<State<StatefulWidget>> cropperKey) =
      _$_CropPhoto;

  GlobalKey<State<StatefulWidget>> get cropperKey;
  @JsonKey(ignore: true)
  _$$_CropPhotoCopyWith<_$_CropPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GalleryImagePickerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() accessDenied,
    required TResult Function(List<AssetEntity> assets) photosAcquired,
    required TResult Function() noPhotosOnDevice,
    required TResult Function(Uint8List croppedPhotoBytes) croppedPhotoReady,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? accessDenied,
    TResult? Function(List<AssetEntity> assets)? photosAcquired,
    TResult? Function()? noPhotosOnDevice,
    TResult? Function(Uint8List croppedPhotoBytes)? croppedPhotoReady,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accessDenied,
    TResult Function(List<AssetEntity> assets)? photosAcquired,
    TResult Function()? noPhotosOnDevice,
    TResult Function(Uint8List croppedPhotoBytes)? croppedPhotoReady,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AccessDenied value) accessDenied,
    required TResult Function(_PhotosAcquired value) photosAcquired,
    required TResult Function(_NoPhotosOnDevice value) noPhotosOnDevice,
    required TResult Function(_CroppedPhotoReady value) croppedPhotoReady,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccessDenied value)? accessDenied,
    TResult? Function(_PhotosAcquired value)? photosAcquired,
    TResult? Function(_NoPhotosOnDevice value)? noPhotosOnDevice,
    TResult? Function(_CroppedPhotoReady value)? croppedPhotoReady,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccessDenied value)? accessDenied,
    TResult Function(_PhotosAcquired value)? photosAcquired,
    TResult Function(_NoPhotosOnDevice value)? noPhotosOnDevice,
    TResult Function(_CroppedPhotoReady value)? croppedPhotoReady,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryImagePickerStateCopyWith<$Res> {
  factory $GalleryImagePickerStateCopyWith(GalleryImagePickerState value,
          $Res Function(GalleryImagePickerState) then) =
      _$GalleryImagePickerStateCopyWithImpl<$Res, GalleryImagePickerState>;
}

/// @nodoc
class _$GalleryImagePickerStateCopyWithImpl<$Res,
        $Val extends GalleryImagePickerState>
    implements $GalleryImagePickerStateCopyWith<$Res> {
  _$GalleryImagePickerStateCopyWithImpl(this._value, this._then);

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
    extends _$GalleryImagePickerStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'GalleryImagePickerState.initial()';
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
    required TResult Function(List<AssetEntity> assets) photosAcquired,
    required TResult Function() noPhotosOnDevice,
    required TResult Function(Uint8List croppedPhotoBytes) croppedPhotoReady,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? accessDenied,
    TResult? Function(List<AssetEntity> assets)? photosAcquired,
    TResult? Function()? noPhotosOnDevice,
    TResult? Function(Uint8List croppedPhotoBytes)? croppedPhotoReady,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accessDenied,
    TResult Function(List<AssetEntity> assets)? photosAcquired,
    TResult Function()? noPhotosOnDevice,
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
    required TResult Function(_AccessDenied value) accessDenied,
    required TResult Function(_PhotosAcquired value) photosAcquired,
    required TResult Function(_NoPhotosOnDevice value) noPhotosOnDevice,
    required TResult Function(_CroppedPhotoReady value) croppedPhotoReady,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccessDenied value)? accessDenied,
    TResult? Function(_PhotosAcquired value)? photosAcquired,
    TResult? Function(_NoPhotosOnDevice value)? noPhotosOnDevice,
    TResult? Function(_CroppedPhotoReady value)? croppedPhotoReady,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccessDenied value)? accessDenied,
    TResult Function(_PhotosAcquired value)? photosAcquired,
    TResult Function(_NoPhotosOnDevice value)? noPhotosOnDevice,
    TResult Function(_CroppedPhotoReady value)? croppedPhotoReady,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GalleryImagePickerState {
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
    extends _$GalleryImagePickerStateCopyWithImpl<$Res, _$_AccessDenied>
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
    return 'GalleryImagePickerState.accessDenied()';
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
    required TResult Function(List<AssetEntity> assets) photosAcquired,
    required TResult Function() noPhotosOnDevice,
    required TResult Function(Uint8List croppedPhotoBytes) croppedPhotoReady,
  }) {
    return accessDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? accessDenied,
    TResult? Function(List<AssetEntity> assets)? photosAcquired,
    TResult? Function()? noPhotosOnDevice,
    TResult? Function(Uint8List croppedPhotoBytes)? croppedPhotoReady,
  }) {
    return accessDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accessDenied,
    TResult Function(List<AssetEntity> assets)? photosAcquired,
    TResult Function()? noPhotosOnDevice,
    TResult Function(Uint8List croppedPhotoBytes)? croppedPhotoReady,
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
    required TResult Function(_PhotosAcquired value) photosAcquired,
    required TResult Function(_NoPhotosOnDevice value) noPhotosOnDevice,
    required TResult Function(_CroppedPhotoReady value) croppedPhotoReady,
  }) {
    return accessDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccessDenied value)? accessDenied,
    TResult? Function(_PhotosAcquired value)? photosAcquired,
    TResult? Function(_NoPhotosOnDevice value)? noPhotosOnDevice,
    TResult? Function(_CroppedPhotoReady value)? croppedPhotoReady,
  }) {
    return accessDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccessDenied value)? accessDenied,
    TResult Function(_PhotosAcquired value)? photosAcquired,
    TResult Function(_NoPhotosOnDevice value)? noPhotosOnDevice,
    TResult Function(_CroppedPhotoReady value)? croppedPhotoReady,
    required TResult orElse(),
  }) {
    if (accessDenied != null) {
      return accessDenied(this);
    }
    return orElse();
  }
}

abstract class _AccessDenied implements GalleryImagePickerState {
  const factory _AccessDenied() = _$_AccessDenied;
}

/// @nodoc
abstract class _$$_PhotosAcquiredCopyWith<$Res> {
  factory _$$_PhotosAcquiredCopyWith(
          _$_PhotosAcquired value, $Res Function(_$_PhotosAcquired) then) =
      __$$_PhotosAcquiredCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AssetEntity> assets});
}

/// @nodoc
class __$$_PhotosAcquiredCopyWithImpl<$Res>
    extends _$GalleryImagePickerStateCopyWithImpl<$Res, _$_PhotosAcquired>
    implements _$$_PhotosAcquiredCopyWith<$Res> {
  __$$_PhotosAcquiredCopyWithImpl(
      _$_PhotosAcquired _value, $Res Function(_$_PhotosAcquired) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assets = null,
  }) {
    return _then(_$_PhotosAcquired(
      null == assets
          ? _value._assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<AssetEntity>,
    ));
  }
}

/// @nodoc

class _$_PhotosAcquired implements _PhotosAcquired {
  const _$_PhotosAcquired(final List<AssetEntity> assets) : _assets = assets;

  final List<AssetEntity> _assets;
  @override
  List<AssetEntity> get assets {
    if (_assets is EqualUnmodifiableListView) return _assets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assets);
  }

  @override
  String toString() {
    return 'GalleryImagePickerState.photosAcquired(assets: $assets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotosAcquired &&
            const DeepCollectionEquality().equals(other._assets, _assets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_assets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhotosAcquiredCopyWith<_$_PhotosAcquired> get copyWith =>
      __$$_PhotosAcquiredCopyWithImpl<_$_PhotosAcquired>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() accessDenied,
    required TResult Function(List<AssetEntity> assets) photosAcquired,
    required TResult Function() noPhotosOnDevice,
    required TResult Function(Uint8List croppedPhotoBytes) croppedPhotoReady,
  }) {
    return photosAcquired(assets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? accessDenied,
    TResult? Function(List<AssetEntity> assets)? photosAcquired,
    TResult? Function()? noPhotosOnDevice,
    TResult? Function(Uint8List croppedPhotoBytes)? croppedPhotoReady,
  }) {
    return photosAcquired?.call(assets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accessDenied,
    TResult Function(List<AssetEntity> assets)? photosAcquired,
    TResult Function()? noPhotosOnDevice,
    TResult Function(Uint8List croppedPhotoBytes)? croppedPhotoReady,
    required TResult orElse(),
  }) {
    if (photosAcquired != null) {
      return photosAcquired(assets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AccessDenied value) accessDenied,
    required TResult Function(_PhotosAcquired value) photosAcquired,
    required TResult Function(_NoPhotosOnDevice value) noPhotosOnDevice,
    required TResult Function(_CroppedPhotoReady value) croppedPhotoReady,
  }) {
    return photosAcquired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccessDenied value)? accessDenied,
    TResult? Function(_PhotosAcquired value)? photosAcquired,
    TResult? Function(_NoPhotosOnDevice value)? noPhotosOnDevice,
    TResult? Function(_CroppedPhotoReady value)? croppedPhotoReady,
  }) {
    return photosAcquired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccessDenied value)? accessDenied,
    TResult Function(_PhotosAcquired value)? photosAcquired,
    TResult Function(_NoPhotosOnDevice value)? noPhotosOnDevice,
    TResult Function(_CroppedPhotoReady value)? croppedPhotoReady,
    required TResult orElse(),
  }) {
    if (photosAcquired != null) {
      return photosAcquired(this);
    }
    return orElse();
  }
}

abstract class _PhotosAcquired implements GalleryImagePickerState {
  const factory _PhotosAcquired(final List<AssetEntity> assets) =
      _$_PhotosAcquired;

  List<AssetEntity> get assets;
  @JsonKey(ignore: true)
  _$$_PhotosAcquiredCopyWith<_$_PhotosAcquired> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NoPhotosOnDeviceCopyWith<$Res> {
  factory _$$_NoPhotosOnDeviceCopyWith(
          _$_NoPhotosOnDevice value, $Res Function(_$_NoPhotosOnDevice) then) =
      __$$_NoPhotosOnDeviceCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoPhotosOnDeviceCopyWithImpl<$Res>
    extends _$GalleryImagePickerStateCopyWithImpl<$Res, _$_NoPhotosOnDevice>
    implements _$$_NoPhotosOnDeviceCopyWith<$Res> {
  __$$_NoPhotosOnDeviceCopyWithImpl(
      _$_NoPhotosOnDevice _value, $Res Function(_$_NoPhotosOnDevice) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NoPhotosOnDevice implements _NoPhotosOnDevice {
  const _$_NoPhotosOnDevice();

  @override
  String toString() {
    return 'GalleryImagePickerState.noPhotosOnDevice()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoPhotosOnDevice);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() accessDenied,
    required TResult Function(List<AssetEntity> assets) photosAcquired,
    required TResult Function() noPhotosOnDevice,
    required TResult Function(Uint8List croppedPhotoBytes) croppedPhotoReady,
  }) {
    return noPhotosOnDevice();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? accessDenied,
    TResult? Function(List<AssetEntity> assets)? photosAcquired,
    TResult? Function()? noPhotosOnDevice,
    TResult? Function(Uint8List croppedPhotoBytes)? croppedPhotoReady,
  }) {
    return noPhotosOnDevice?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accessDenied,
    TResult Function(List<AssetEntity> assets)? photosAcquired,
    TResult Function()? noPhotosOnDevice,
    TResult Function(Uint8List croppedPhotoBytes)? croppedPhotoReady,
    required TResult orElse(),
  }) {
    if (noPhotosOnDevice != null) {
      return noPhotosOnDevice();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AccessDenied value) accessDenied,
    required TResult Function(_PhotosAcquired value) photosAcquired,
    required TResult Function(_NoPhotosOnDevice value) noPhotosOnDevice,
    required TResult Function(_CroppedPhotoReady value) croppedPhotoReady,
  }) {
    return noPhotosOnDevice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccessDenied value)? accessDenied,
    TResult? Function(_PhotosAcquired value)? photosAcquired,
    TResult? Function(_NoPhotosOnDevice value)? noPhotosOnDevice,
    TResult? Function(_CroppedPhotoReady value)? croppedPhotoReady,
  }) {
    return noPhotosOnDevice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccessDenied value)? accessDenied,
    TResult Function(_PhotosAcquired value)? photosAcquired,
    TResult Function(_NoPhotosOnDevice value)? noPhotosOnDevice,
    TResult Function(_CroppedPhotoReady value)? croppedPhotoReady,
    required TResult orElse(),
  }) {
    if (noPhotosOnDevice != null) {
      return noPhotosOnDevice(this);
    }
    return orElse();
  }
}

abstract class _NoPhotosOnDevice implements GalleryImagePickerState {
  const factory _NoPhotosOnDevice() = _$_NoPhotosOnDevice;
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
    extends _$GalleryImagePickerStateCopyWithImpl<$Res, _$_CroppedPhotoReady>
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
    return 'GalleryImagePickerState.croppedPhotoReady(croppedPhotoBytes: $croppedPhotoBytes)';
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
    required TResult Function() accessDenied,
    required TResult Function(List<AssetEntity> assets) photosAcquired,
    required TResult Function() noPhotosOnDevice,
    required TResult Function(Uint8List croppedPhotoBytes) croppedPhotoReady,
  }) {
    return croppedPhotoReady(croppedPhotoBytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? accessDenied,
    TResult? Function(List<AssetEntity> assets)? photosAcquired,
    TResult? Function()? noPhotosOnDevice,
    TResult? Function(Uint8List croppedPhotoBytes)? croppedPhotoReady,
  }) {
    return croppedPhotoReady?.call(croppedPhotoBytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accessDenied,
    TResult Function(List<AssetEntity> assets)? photosAcquired,
    TResult Function()? noPhotosOnDevice,
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
    required TResult Function(_AccessDenied value) accessDenied,
    required TResult Function(_PhotosAcquired value) photosAcquired,
    required TResult Function(_NoPhotosOnDevice value) noPhotosOnDevice,
    required TResult Function(_CroppedPhotoReady value) croppedPhotoReady,
  }) {
    return croppedPhotoReady(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AccessDenied value)? accessDenied,
    TResult? Function(_PhotosAcquired value)? photosAcquired,
    TResult? Function(_NoPhotosOnDevice value)? noPhotosOnDevice,
    TResult? Function(_CroppedPhotoReady value)? croppedPhotoReady,
  }) {
    return croppedPhotoReady?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AccessDenied value)? accessDenied,
    TResult Function(_PhotosAcquired value)? photosAcquired,
    TResult Function(_NoPhotosOnDevice value)? noPhotosOnDevice,
    TResult Function(_CroppedPhotoReady value)? croppedPhotoReady,
    required TResult orElse(),
  }) {
    if (croppedPhotoReady != null) {
      return croppedPhotoReady(this);
    }
    return orElse();
  }
}

abstract class _CroppedPhotoReady implements GalleryImagePickerState {
  const factory _CroppedPhotoReady(final Uint8List croppedPhotoBytes) =
      _$_CroppedPhotoReady;

  Uint8List get croppedPhotoBytes;
  @JsonKey(ignore: true)
  _$$_CroppedPhotoReadyCopyWith<_$_CroppedPhotoReady> get copyWith =>
      throw _privateConstructorUsedError;
}
