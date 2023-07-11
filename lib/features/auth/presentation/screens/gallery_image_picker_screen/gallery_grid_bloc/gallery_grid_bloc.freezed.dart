// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gallery_grid_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GalleryGridEvent {
  String get photoId => throw _privateConstructorUsedError;
  Future<File?> get imageFile => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String photoId, Future<File?> imageFile) tap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String photoId, Future<File?> imageFile)? tap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String photoId, Future<File?> imageFile)? tap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Tap value) tap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Tap value)? tap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Tap value)? tap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GalleryGridEventCopyWith<GalleryGridEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryGridEventCopyWith<$Res> {
  factory $GalleryGridEventCopyWith(
          GalleryGridEvent value, $Res Function(GalleryGridEvent) then) =
      _$GalleryGridEventCopyWithImpl<$Res, GalleryGridEvent>;
  @useResult
  $Res call({String photoId, Future<File?> imageFile});
}

/// @nodoc
class _$GalleryGridEventCopyWithImpl<$Res, $Val extends GalleryGridEvent>
    implements $GalleryGridEventCopyWith<$Res> {
  _$GalleryGridEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoId = null,
    Object? imageFile = null,
  }) {
    return _then(_value.copyWith(
      photoId: null == photoId
          ? _value.photoId
          : photoId // ignore: cast_nullable_to_non_nullable
              as String,
      imageFile: null == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as Future<File?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TapCopyWith<$Res>
    implements $GalleryGridEventCopyWith<$Res> {
  factory _$$_TapCopyWith(_$_Tap value, $Res Function(_$_Tap) then) =
      __$$_TapCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String photoId, Future<File?> imageFile});
}

/// @nodoc
class __$$_TapCopyWithImpl<$Res>
    extends _$GalleryGridEventCopyWithImpl<$Res, _$_Tap>
    implements _$$_TapCopyWith<$Res> {
  __$$_TapCopyWithImpl(_$_Tap _value, $Res Function(_$_Tap) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoId = null,
    Object? imageFile = null,
  }) {
    return _then(_$_Tap(
      null == photoId
          ? _value.photoId
          : photoId // ignore: cast_nullable_to_non_nullable
              as String,
      null == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as Future<File?>,
    ));
  }
}

/// @nodoc

class _$_Tap implements _Tap {
  const _$_Tap(this.photoId, this.imageFile);

  @override
  final String photoId;
  @override
  final Future<File?> imageFile;

  @override
  String toString() {
    return 'GalleryGridEvent.tap(photoId: $photoId, imageFile: $imageFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tap &&
            (identical(other.photoId, photoId) || other.photoId == photoId) &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photoId, imageFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TapCopyWith<_$_Tap> get copyWith =>
      __$$_TapCopyWithImpl<_$_Tap>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String photoId, Future<File?> imageFile) tap,
  }) {
    return tap(photoId, imageFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String photoId, Future<File?> imageFile)? tap,
  }) {
    return tap?.call(photoId, imageFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String photoId, Future<File?> imageFile)? tap,
    required TResult orElse(),
  }) {
    if (tap != null) {
      return tap(photoId, imageFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Tap value) tap,
  }) {
    return tap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Tap value)? tap,
  }) {
    return tap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Tap value)? tap,
    required TResult orElse(),
  }) {
    if (tap != null) {
      return tap(this);
    }
    return orElse();
  }
}

abstract class _Tap implements GalleryGridEvent {
  const factory _Tap(final String photoId, final Future<File?> imageFile) =
      _$_Tap;

  @override
  String get photoId;
  @override
  Future<File?> get imageFile;
  @override
  @JsonKey(ignore: true)
  _$$_TapCopyWith<_$_Tap> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GalleryGridState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String tappedPhotoId, Uint8List imageFile)
        photoTapped,
    required TResult Function() invalidPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String tappedPhotoId, Uint8List imageFile)? photoTapped,
    TResult? Function()? invalidPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String tappedPhotoId, Uint8List imageFile)? photoTapped,
    TResult Function()? invalidPhoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PhotoTapped value) photoTapped,
    required TResult Function(_InvalidPhoto value) invalidPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PhotoTapped value)? photoTapped,
    TResult? Function(_InvalidPhoto value)? invalidPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PhotoTapped value)? photoTapped,
    TResult Function(_InvalidPhoto value)? invalidPhoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryGridStateCopyWith<$Res> {
  factory $GalleryGridStateCopyWith(
          GalleryGridState value, $Res Function(GalleryGridState) then) =
      _$GalleryGridStateCopyWithImpl<$Res, GalleryGridState>;
}

/// @nodoc
class _$GalleryGridStateCopyWithImpl<$Res, $Val extends GalleryGridState>
    implements $GalleryGridStateCopyWith<$Res> {
  _$GalleryGridStateCopyWithImpl(this._value, this._then);

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
    extends _$GalleryGridStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'GalleryGridState.initial()';
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
    required TResult Function(String tappedPhotoId, Uint8List imageFile)
        photoTapped,
    required TResult Function() invalidPhoto,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String tappedPhotoId, Uint8List imageFile)? photoTapped,
    TResult? Function()? invalidPhoto,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String tappedPhotoId, Uint8List imageFile)? photoTapped,
    TResult Function()? invalidPhoto,
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
    required TResult Function(_PhotoTapped value) photoTapped,
    required TResult Function(_InvalidPhoto value) invalidPhoto,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PhotoTapped value)? photoTapped,
    TResult? Function(_InvalidPhoto value)? invalidPhoto,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PhotoTapped value)? photoTapped,
    TResult Function(_InvalidPhoto value)? invalidPhoto,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GalleryGridState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_PhotoTappedCopyWith<$Res> {
  factory _$$_PhotoTappedCopyWith(
          _$_PhotoTapped value, $Res Function(_$_PhotoTapped) then) =
      __$$_PhotoTappedCopyWithImpl<$Res>;
  @useResult
  $Res call({String tappedPhotoId, Uint8List imageFile});
}

/// @nodoc
class __$$_PhotoTappedCopyWithImpl<$Res>
    extends _$GalleryGridStateCopyWithImpl<$Res, _$_PhotoTapped>
    implements _$$_PhotoTappedCopyWith<$Res> {
  __$$_PhotoTappedCopyWithImpl(
      _$_PhotoTapped _value, $Res Function(_$_PhotoTapped) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tappedPhotoId = null,
    Object? imageFile = null,
  }) {
    return _then(_$_PhotoTapped(
      null == tappedPhotoId
          ? _value.tappedPhotoId
          : tappedPhotoId // ignore: cast_nullable_to_non_nullable
              as String,
      null == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$_PhotoTapped implements _PhotoTapped {
  const _$_PhotoTapped(this.tappedPhotoId, this.imageFile);

  @override
  final String tappedPhotoId;
  @override
  final Uint8List imageFile;

  @override
  String toString() {
    return 'GalleryGridState.photoTapped(tappedPhotoId: $tappedPhotoId, imageFile: $imageFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotoTapped &&
            (identical(other.tappedPhotoId, tappedPhotoId) ||
                other.tappedPhotoId == tappedPhotoId) &&
            const DeepCollectionEquality().equals(other.imageFile, imageFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tappedPhotoId,
      const DeepCollectionEquality().hash(imageFile));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhotoTappedCopyWith<_$_PhotoTapped> get copyWith =>
      __$$_PhotoTappedCopyWithImpl<_$_PhotoTapped>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String tappedPhotoId, Uint8List imageFile)
        photoTapped,
    required TResult Function() invalidPhoto,
  }) {
    return photoTapped(tappedPhotoId, imageFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String tappedPhotoId, Uint8List imageFile)? photoTapped,
    TResult? Function()? invalidPhoto,
  }) {
    return photoTapped?.call(tappedPhotoId, imageFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String tappedPhotoId, Uint8List imageFile)? photoTapped,
    TResult Function()? invalidPhoto,
    required TResult orElse(),
  }) {
    if (photoTapped != null) {
      return photoTapped(tappedPhotoId, imageFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PhotoTapped value) photoTapped,
    required TResult Function(_InvalidPhoto value) invalidPhoto,
  }) {
    return photoTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PhotoTapped value)? photoTapped,
    TResult? Function(_InvalidPhoto value)? invalidPhoto,
  }) {
    return photoTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PhotoTapped value)? photoTapped,
    TResult Function(_InvalidPhoto value)? invalidPhoto,
    required TResult orElse(),
  }) {
    if (photoTapped != null) {
      return photoTapped(this);
    }
    return orElse();
  }
}

abstract class _PhotoTapped implements GalleryGridState {
  const factory _PhotoTapped(
      final String tappedPhotoId, final Uint8List imageFile) = _$_PhotoTapped;

  String get tappedPhotoId;
  Uint8List get imageFile;
  @JsonKey(ignore: true)
  _$$_PhotoTappedCopyWith<_$_PhotoTapped> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidPhotoCopyWith<$Res> {
  factory _$$_InvalidPhotoCopyWith(
          _$_InvalidPhoto value, $Res Function(_$_InvalidPhoto) then) =
      __$$_InvalidPhotoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InvalidPhotoCopyWithImpl<$Res>
    extends _$GalleryGridStateCopyWithImpl<$Res, _$_InvalidPhoto>
    implements _$$_InvalidPhotoCopyWith<$Res> {
  __$$_InvalidPhotoCopyWithImpl(
      _$_InvalidPhoto _value, $Res Function(_$_InvalidPhoto) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InvalidPhoto implements _InvalidPhoto {
  const _$_InvalidPhoto();

  @override
  String toString() {
    return 'GalleryGridState.invalidPhoto()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InvalidPhoto);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String tappedPhotoId, Uint8List imageFile)
        photoTapped,
    required TResult Function() invalidPhoto,
  }) {
    return invalidPhoto();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String tappedPhotoId, Uint8List imageFile)? photoTapped,
    TResult? Function()? invalidPhoto,
  }) {
    return invalidPhoto?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String tappedPhotoId, Uint8List imageFile)? photoTapped,
    TResult Function()? invalidPhoto,
    required TResult orElse(),
  }) {
    if (invalidPhoto != null) {
      return invalidPhoto();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PhotoTapped value) photoTapped,
    required TResult Function(_InvalidPhoto value) invalidPhoto,
  }) {
    return invalidPhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PhotoTapped value)? photoTapped,
    TResult? Function(_InvalidPhoto value)? invalidPhoto,
  }) {
    return invalidPhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PhotoTapped value)? photoTapped,
    TResult Function(_InvalidPhoto value)? invalidPhoto,
    required TResult orElse(),
  }) {
    if (invalidPhoto != null) {
      return invalidPhoto(this);
    }
    return orElse();
  }
}

abstract class _InvalidPhoto implements GalleryGridState {
  const factory _InvalidPhoto() = _$_InvalidPhoto;
}
