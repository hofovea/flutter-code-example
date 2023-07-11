// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bio_input_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BioInputEvent {
  String get input => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) inputChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? inputChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? inputChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputChanged value) inputChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputChanged value)? inputChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputChanged value)? inputChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BioInputEventCopyWith<BioInputEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BioInputEventCopyWith<$Res> {
  factory $BioInputEventCopyWith(
          BioInputEvent value, $Res Function(BioInputEvent) then) =
      _$BioInputEventCopyWithImpl<$Res, BioInputEvent>;
  @useResult
  $Res call({String input});
}

/// @nodoc
class _$BioInputEventCopyWithImpl<$Res, $Val extends BioInputEvent>
    implements $BioInputEventCopyWith<$Res> {
  _$BioInputEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_value.copyWith(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InputChangedCopyWith<$Res>
    implements $BioInputEventCopyWith<$Res> {
  factory _$$_InputChangedCopyWith(
          _$_InputChanged value, $Res Function(_$_InputChanged) then) =
      __$$_InputChangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String input});
}

/// @nodoc
class __$$_InputChangedCopyWithImpl<$Res>
    extends _$BioInputEventCopyWithImpl<$Res, _$_InputChanged>
    implements _$$_InputChangedCopyWith<$Res> {
  __$$_InputChangedCopyWithImpl(
      _$_InputChanged _value, $Res Function(_$_InputChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$_InputChanged(
      null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InputChanged implements _InputChanged {
  const _$_InputChanged(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'BioInputEvent.inputChanged(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputChanged &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputChangedCopyWith<_$_InputChanged> get copyWith =>
      __$$_InputChangedCopyWithImpl<_$_InputChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) inputChanged,
  }) {
    return inputChanged(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? inputChanged,
  }) {
    return inputChanged?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? inputChanged,
    required TResult orElse(),
  }) {
    if (inputChanged != null) {
      return inputChanged(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputChanged value) inputChanged,
  }) {
    return inputChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputChanged value)? inputChanged,
  }) {
    return inputChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputChanged value)? inputChanged,
    required TResult orElse(),
  }) {
    if (inputChanged != null) {
      return inputChanged(this);
    }
    return orElse();
  }
}

abstract class _InputChanged implements BioInputEvent {
  const factory _InputChanged(final String input) = _$_InputChanged;

  @override
  String get input;
  @override
  @JsonKey(ignore: true)
  _$$_InputChangedCopyWith<_$_InputChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BioInputState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int inputLength, String bio) inputValid,
    required TResult Function(int inputLength) inputInvalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int inputLength, String bio)? inputValid,
    TResult? Function(int inputLength)? inputInvalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int inputLength, String bio)? inputValid,
    TResult Function(int inputLength)? inputInvalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InputValid value) inputValid,
    required TResult Function(_InputInvalid value) inputInvalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InputValid value)? inputValid,
    TResult? Function(_InputInvalid value)? inputInvalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InputValid value)? inputValid,
    TResult Function(_InputInvalid value)? inputInvalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BioInputStateCopyWith<$Res> {
  factory $BioInputStateCopyWith(
          BioInputState value, $Res Function(BioInputState) then) =
      _$BioInputStateCopyWithImpl<$Res, BioInputState>;
}

/// @nodoc
class _$BioInputStateCopyWithImpl<$Res, $Val extends BioInputState>
    implements $BioInputStateCopyWith<$Res> {
  _$BioInputStateCopyWithImpl(this._value, this._then);

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
    extends _$BioInputStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'BioInputState.initial()';
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
    required TResult Function(int inputLength, String bio) inputValid,
    required TResult Function(int inputLength) inputInvalid,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int inputLength, String bio)? inputValid,
    TResult? Function(int inputLength)? inputInvalid,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int inputLength, String bio)? inputValid,
    TResult Function(int inputLength)? inputInvalid,
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
    required TResult Function(_InputValid value) inputValid,
    required TResult Function(_InputInvalid value) inputInvalid,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InputValid value)? inputValid,
    TResult? Function(_InputInvalid value)? inputInvalid,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InputValid value)? inputValid,
    TResult Function(_InputInvalid value)? inputInvalid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BioInputState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_InputValidCopyWith<$Res> {
  factory _$$_InputValidCopyWith(
          _$_InputValid value, $Res Function(_$_InputValid) then) =
      __$$_InputValidCopyWithImpl<$Res>;
  @useResult
  $Res call({int inputLength, String bio});
}

/// @nodoc
class __$$_InputValidCopyWithImpl<$Res>
    extends _$BioInputStateCopyWithImpl<$Res, _$_InputValid>
    implements _$$_InputValidCopyWith<$Res> {
  __$$_InputValidCopyWithImpl(
      _$_InputValid _value, $Res Function(_$_InputValid) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputLength = null,
    Object? bio = null,
  }) {
    return _then(_$_InputValid(
      null == inputLength
          ? _value.inputLength
          : inputLength // ignore: cast_nullable_to_non_nullable
              as int,
      null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InputValid implements _InputValid {
  const _$_InputValid(this.inputLength, this.bio);

  @override
  final int inputLength;
  @override
  final String bio;

  @override
  String toString() {
    return 'BioInputState.inputValid(inputLength: $inputLength, bio: $bio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputValid &&
            (identical(other.inputLength, inputLength) ||
                other.inputLength == inputLength) &&
            (identical(other.bio, bio) || other.bio == bio));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inputLength, bio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputValidCopyWith<_$_InputValid> get copyWith =>
      __$$_InputValidCopyWithImpl<_$_InputValid>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int inputLength, String bio) inputValid,
    required TResult Function(int inputLength) inputInvalid,
  }) {
    return inputValid(inputLength, bio);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int inputLength, String bio)? inputValid,
    TResult? Function(int inputLength)? inputInvalid,
  }) {
    return inputValid?.call(inputLength, bio);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int inputLength, String bio)? inputValid,
    TResult Function(int inputLength)? inputInvalid,
    required TResult orElse(),
  }) {
    if (inputValid != null) {
      return inputValid(inputLength, bio);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InputValid value) inputValid,
    required TResult Function(_InputInvalid value) inputInvalid,
  }) {
    return inputValid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InputValid value)? inputValid,
    TResult? Function(_InputInvalid value)? inputInvalid,
  }) {
    return inputValid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InputValid value)? inputValid,
    TResult Function(_InputInvalid value)? inputInvalid,
    required TResult orElse(),
  }) {
    if (inputValid != null) {
      return inputValid(this);
    }
    return orElse();
  }
}

abstract class _InputValid implements BioInputState {
  const factory _InputValid(final int inputLength, final String bio) =
      _$_InputValid;

  int get inputLength;
  String get bio;
  @JsonKey(ignore: true)
  _$$_InputValidCopyWith<_$_InputValid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InputInvalidCopyWith<$Res> {
  factory _$$_InputInvalidCopyWith(
          _$_InputInvalid value, $Res Function(_$_InputInvalid) then) =
      __$$_InputInvalidCopyWithImpl<$Res>;
  @useResult
  $Res call({int inputLength});
}

/// @nodoc
class __$$_InputInvalidCopyWithImpl<$Res>
    extends _$BioInputStateCopyWithImpl<$Res, _$_InputInvalid>
    implements _$$_InputInvalidCopyWith<$Res> {
  __$$_InputInvalidCopyWithImpl(
      _$_InputInvalid _value, $Res Function(_$_InputInvalid) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputLength = null,
  }) {
    return _then(_$_InputInvalid(
      null == inputLength
          ? _value.inputLength
          : inputLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_InputInvalid implements _InputInvalid {
  const _$_InputInvalid(this.inputLength);

  @override
  final int inputLength;

  @override
  String toString() {
    return 'BioInputState.inputInvalid(inputLength: $inputLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputInvalid &&
            (identical(other.inputLength, inputLength) ||
                other.inputLength == inputLength));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inputLength);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputInvalidCopyWith<_$_InputInvalid> get copyWith =>
      __$$_InputInvalidCopyWithImpl<_$_InputInvalid>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int inputLength, String bio) inputValid,
    required TResult Function(int inputLength) inputInvalid,
  }) {
    return inputInvalid(inputLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int inputLength, String bio)? inputValid,
    TResult? Function(int inputLength)? inputInvalid,
  }) {
    return inputInvalid?.call(inputLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int inputLength, String bio)? inputValid,
    TResult Function(int inputLength)? inputInvalid,
    required TResult orElse(),
  }) {
    if (inputInvalid != null) {
      return inputInvalid(inputLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InputValid value) inputValid,
    required TResult Function(_InputInvalid value) inputInvalid,
  }) {
    return inputInvalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InputValid value)? inputValid,
    TResult? Function(_InputInvalid value)? inputInvalid,
  }) {
    return inputInvalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InputValid value)? inputValid,
    TResult Function(_InputInvalid value)? inputInvalid,
    required TResult orElse(),
  }) {
    if (inputInvalid != null) {
      return inputInvalid(this);
    }
    return orElse();
  }
}

abstract class _InputInvalid implements BioInputState {
  const factory _InputInvalid(final int inputLength) = _$_InputInvalid;

  int get inputLength;
  @JsonKey(ignore: true)
  _$$_InputInvalidCopyWith<_$_InputInvalid> get copyWith =>
      throw _privateConstructorUsedError;
}
