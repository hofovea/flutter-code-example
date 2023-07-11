// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_field_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TextFieldEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) inputChanged,
    required TResult Function(String? value) fieldReady,
    required TResult Function(String errorText) showError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? inputChanged,
    TResult? Function(String? value)? fieldReady,
    TResult? Function(String errorText)? showError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? inputChanged,
    TResult Function(String? value)? fieldReady,
    TResult Function(String errorText)? showError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputChanged value) inputChanged,
    required TResult Function(_FieldReady value) fieldReady,
    required TResult Function(_ShowError value) showError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputChanged value)? inputChanged,
    TResult? Function(_FieldReady value)? fieldReady,
    TResult? Function(_ShowError value)? showError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputChanged value)? inputChanged,
    TResult Function(_FieldReady value)? fieldReady,
    TResult Function(_ShowError value)? showError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextFieldEventCopyWith<$Res> {
  factory $TextFieldEventCopyWith(
          TextFieldEvent value, $Res Function(TextFieldEvent) then) =
      _$TextFieldEventCopyWithImpl<$Res, TextFieldEvent>;
}

/// @nodoc
class _$TextFieldEventCopyWithImpl<$Res, $Val extends TextFieldEvent>
    implements $TextFieldEventCopyWith<$Res> {
  _$TextFieldEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InputChangedCopyWith<$Res> {
  factory _$$_InputChangedCopyWith(
          _$_InputChanged value, $Res Function(_$_InputChanged) then) =
      __$$_InputChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_InputChangedCopyWithImpl<$Res>
    extends _$TextFieldEventCopyWithImpl<$Res, _$_InputChanged>
    implements _$$_InputChangedCopyWith<$Res> {
  __$$_InputChangedCopyWithImpl(
      _$_InputChanged _value, $Res Function(_$_InputChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_InputChanged(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InputChanged implements _InputChanged {
  const _$_InputChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'TextFieldEvent.inputChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputChangedCopyWith<_$_InputChanged> get copyWith =>
      __$$_InputChangedCopyWithImpl<_$_InputChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) inputChanged,
    required TResult Function(String? value) fieldReady,
    required TResult Function(String errorText) showError,
  }) {
    return inputChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? inputChanged,
    TResult? Function(String? value)? fieldReady,
    TResult? Function(String errorText)? showError,
  }) {
    return inputChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? inputChanged,
    TResult Function(String? value)? fieldReady,
    TResult Function(String errorText)? showError,
    required TResult orElse(),
  }) {
    if (inputChanged != null) {
      return inputChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputChanged value) inputChanged,
    required TResult Function(_FieldReady value) fieldReady,
    required TResult Function(_ShowError value) showError,
  }) {
    return inputChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputChanged value)? inputChanged,
    TResult? Function(_FieldReady value)? fieldReady,
    TResult? Function(_ShowError value)? showError,
  }) {
    return inputChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputChanged value)? inputChanged,
    TResult Function(_FieldReady value)? fieldReady,
    TResult Function(_ShowError value)? showError,
    required TResult orElse(),
  }) {
    if (inputChanged != null) {
      return inputChanged(this);
    }
    return orElse();
  }
}

abstract class _InputChanged implements TextFieldEvent {
  const factory _InputChanged(final String value) = _$_InputChanged;

  String get value;
  @JsonKey(ignore: true)
  _$$_InputChangedCopyWith<_$_InputChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FieldReadyCopyWith<$Res> {
  factory _$$_FieldReadyCopyWith(
          _$_FieldReady value, $Res Function(_$_FieldReady) then) =
      __$$_FieldReadyCopyWithImpl<$Res>;
  @useResult
  $Res call({String? value});
}

/// @nodoc
class __$$_FieldReadyCopyWithImpl<$Res>
    extends _$TextFieldEventCopyWithImpl<$Res, _$_FieldReady>
    implements _$$_FieldReadyCopyWith<$Res> {
  __$$_FieldReadyCopyWithImpl(
      _$_FieldReady _value, $Res Function(_$_FieldReady) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_FieldReady(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FieldReady implements _FieldReady {
  const _$_FieldReady(this.value);

  @override
  final String? value;

  @override
  String toString() {
    return 'TextFieldEvent.fieldReady(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FieldReady &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FieldReadyCopyWith<_$_FieldReady> get copyWith =>
      __$$_FieldReadyCopyWithImpl<_$_FieldReady>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) inputChanged,
    required TResult Function(String? value) fieldReady,
    required TResult Function(String errorText) showError,
  }) {
    return fieldReady(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? inputChanged,
    TResult? Function(String? value)? fieldReady,
    TResult? Function(String errorText)? showError,
  }) {
    return fieldReady?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? inputChanged,
    TResult Function(String? value)? fieldReady,
    TResult Function(String errorText)? showError,
    required TResult orElse(),
  }) {
    if (fieldReady != null) {
      return fieldReady(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputChanged value) inputChanged,
    required TResult Function(_FieldReady value) fieldReady,
    required TResult Function(_ShowError value) showError,
  }) {
    return fieldReady(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputChanged value)? inputChanged,
    TResult? Function(_FieldReady value)? fieldReady,
    TResult? Function(_ShowError value)? showError,
  }) {
    return fieldReady?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputChanged value)? inputChanged,
    TResult Function(_FieldReady value)? fieldReady,
    TResult Function(_ShowError value)? showError,
    required TResult orElse(),
  }) {
    if (fieldReady != null) {
      return fieldReady(this);
    }
    return orElse();
  }
}

abstract class _FieldReady implements TextFieldEvent {
  const factory _FieldReady(final String? value) = _$_FieldReady;

  String? get value;
  @JsonKey(ignore: true)
  _$$_FieldReadyCopyWith<_$_FieldReady> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowErrorCopyWith<$Res> {
  factory _$$_ShowErrorCopyWith(
          _$_ShowError value, $Res Function(_$_ShowError) then) =
      __$$_ShowErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorText});
}

/// @nodoc
class __$$_ShowErrorCopyWithImpl<$Res>
    extends _$TextFieldEventCopyWithImpl<$Res, _$_ShowError>
    implements _$$_ShowErrorCopyWith<$Res> {
  __$$_ShowErrorCopyWithImpl(
      _$_ShowError _value, $Res Function(_$_ShowError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = null,
  }) {
    return _then(_$_ShowError(
      null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowError implements _ShowError {
  const _$_ShowError(this.errorText);

  @override
  final String errorText;

  @override
  String toString() {
    return 'TextFieldEvent.showError(errorText: $errorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowError &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowErrorCopyWith<_$_ShowError> get copyWith =>
      __$$_ShowErrorCopyWithImpl<_$_ShowError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) inputChanged,
    required TResult Function(String? value) fieldReady,
    required TResult Function(String errorText) showError,
  }) {
    return showError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? inputChanged,
    TResult? Function(String? value)? fieldReady,
    TResult? Function(String errorText)? showError,
  }) {
    return showError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? inputChanged,
    TResult Function(String? value)? fieldReady,
    TResult Function(String errorText)? showError,
    required TResult orElse(),
  }) {
    if (showError != null) {
      return showError(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputChanged value) inputChanged,
    required TResult Function(_FieldReady value) fieldReady,
    required TResult Function(_ShowError value) showError,
  }) {
    return showError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputChanged value)? inputChanged,
    TResult? Function(_FieldReady value)? fieldReady,
    TResult? Function(_ShowError value)? showError,
  }) {
    return showError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputChanged value)? inputChanged,
    TResult Function(_FieldReady value)? fieldReady,
    TResult Function(_ShowError value)? showError,
    required TResult orElse(),
  }) {
    if (showError != null) {
      return showError(this);
    }
    return orElse();
  }
}

abstract class _ShowError implements TextFieldEvent {
  const factory _ShowError(final String errorText) = _$_ShowError;

  String get errorText;
  @JsonKey(ignore: true)
  _$$_ShowErrorCopyWith<_$_ShowError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TextFieldState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? errorText) validationResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? errorText)? validationResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? errorText)? validationResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ValidationResult value) validationResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ValidationResult value)? validationResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ValidationResult value)? validationResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextFieldStateCopyWith<$Res> {
  factory $TextFieldStateCopyWith(
          TextFieldState value, $Res Function(TextFieldState) then) =
      _$TextFieldStateCopyWithImpl<$Res, TextFieldState>;
}

/// @nodoc
class _$TextFieldStateCopyWithImpl<$Res, $Val extends TextFieldState>
    implements $TextFieldStateCopyWith<$Res> {
  _$TextFieldStateCopyWithImpl(this._value, this._then);

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
    extends _$TextFieldStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TextFieldState.initial()';
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
    required TResult Function(String? errorText) validationResult,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? errorText)? validationResult,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? errorText)? validationResult,
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
    required TResult Function(_ValidationResult value) validationResult,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ValidationResult value)? validationResult,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ValidationResult value)? validationResult,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TextFieldState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ValidationResultCopyWith<$Res> {
  factory _$$_ValidationResultCopyWith(
          _$_ValidationResult value, $Res Function(_$_ValidationResult) then) =
      __$$_ValidationResultCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorText});
}

/// @nodoc
class __$$_ValidationResultCopyWithImpl<$Res>
    extends _$TextFieldStateCopyWithImpl<$Res, _$_ValidationResult>
    implements _$$_ValidationResultCopyWith<$Res> {
  __$$_ValidationResultCopyWithImpl(
      _$_ValidationResult _value, $Res Function(_$_ValidationResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = freezed,
  }) {
    return _then(_$_ValidationResult(
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ValidationResult implements _ValidationResult {
  const _$_ValidationResult({this.errorText});

  @override
  final String? errorText;

  @override
  String toString() {
    return 'TextFieldState.validationResult(errorText: $errorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidationResult &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidationResultCopyWith<_$_ValidationResult> get copyWith =>
      __$$_ValidationResultCopyWithImpl<_$_ValidationResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? errorText) validationResult,
  }) {
    return validationResult(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? errorText)? validationResult,
  }) {
    return validationResult?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? errorText)? validationResult,
    required TResult orElse(),
  }) {
    if (validationResult != null) {
      return validationResult(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ValidationResult value) validationResult,
  }) {
    return validationResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ValidationResult value)? validationResult,
  }) {
    return validationResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ValidationResult value)? validationResult,
    required TResult orElse(),
  }) {
    if (validationResult != null) {
      return validationResult(this);
    }
    return orElse();
  }
}

abstract class _ValidationResult implements TextFieldState {
  const factory _ValidationResult({final String? errorText}) =
      _$_ValidationResult;

  String? get errorText;
  @JsonKey(ignore: true)
  _$$_ValidationResultCopyWith<_$_ValidationResult> get copyWith =>
      throw _privateConstructorUsedError;
}
