// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'birthday_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BirthdayEvent {
  DateTime get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime value) datePickerChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime value)? datePickerChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime value)? datePickerChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DatePickerChanged value) datePickerChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DatePickerChanged value)? datePickerChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DatePickerChanged value)? datePickerChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BirthdayEventCopyWith<BirthdayEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirthdayEventCopyWith<$Res> {
  factory $BirthdayEventCopyWith(
          BirthdayEvent value, $Res Function(BirthdayEvent) then) =
      _$BirthdayEventCopyWithImpl<$Res, BirthdayEvent>;
  @useResult
  $Res call({DateTime value});
}

/// @nodoc
class _$BirthdayEventCopyWithImpl<$Res, $Val extends BirthdayEvent>
    implements $BirthdayEventCopyWith<$Res> {
  _$BirthdayEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DatePickerChangedCopyWith<$Res>
    implements $BirthdayEventCopyWith<$Res> {
  factory _$$_DatePickerChangedCopyWith(_$_DatePickerChanged value,
          $Res Function(_$_DatePickerChanged) then) =
      __$$_DatePickerChangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime value});
}

/// @nodoc
class __$$_DatePickerChangedCopyWithImpl<$Res>
    extends _$BirthdayEventCopyWithImpl<$Res, _$_DatePickerChanged>
    implements _$$_DatePickerChangedCopyWith<$Res> {
  __$$_DatePickerChangedCopyWithImpl(
      _$_DatePickerChanged _value, $Res Function(_$_DatePickerChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_DatePickerChanged(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_DatePickerChanged implements _DatePickerChanged {
  const _$_DatePickerChanged(this.value);

  @override
  final DateTime value;

  @override
  String toString() {
    return 'BirthdayEvent.datePickerChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DatePickerChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DatePickerChangedCopyWith<_$_DatePickerChanged> get copyWith =>
      __$$_DatePickerChangedCopyWithImpl<_$_DatePickerChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime value) datePickerChanged,
  }) {
    return datePickerChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime value)? datePickerChanged,
  }) {
    return datePickerChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime value)? datePickerChanged,
    required TResult orElse(),
  }) {
    if (datePickerChanged != null) {
      return datePickerChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DatePickerChanged value) datePickerChanged,
  }) {
    return datePickerChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DatePickerChanged value)? datePickerChanged,
  }) {
    return datePickerChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DatePickerChanged value)? datePickerChanged,
    required TResult orElse(),
  }) {
    if (datePickerChanged != null) {
      return datePickerChanged(this);
    }
    return orElse();
  }
}

abstract class _DatePickerChanged implements BirthdayEvent {
  const factory _DatePickerChanged(final DateTime value) = _$_DatePickerChanged;

  @override
  DateTime get value;
  @override
  @JsonKey(ignore: true)
  _$$_DatePickerChangedCopyWith<_$_DatePickerChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BirthdayState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DateTime value) datePickerUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTime value)? datePickerUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTime value)? datePickerUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DatePickerUpdate value) datePickerUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DatePickerUpdate value)? datePickerUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DatePickerUpdate value)? datePickerUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirthdayStateCopyWith<$Res> {
  factory $BirthdayStateCopyWith(
          BirthdayState value, $Res Function(BirthdayState) then) =
      _$BirthdayStateCopyWithImpl<$Res, BirthdayState>;
}

/// @nodoc
class _$BirthdayStateCopyWithImpl<$Res, $Val extends BirthdayState>
    implements $BirthdayStateCopyWith<$Res> {
  _$BirthdayStateCopyWithImpl(this._value, this._then);

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
    extends _$BirthdayStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'BirthdayState.initial()';
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
    required TResult Function(DateTime value) datePickerUpdate,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTime value)? datePickerUpdate,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTime value)? datePickerUpdate,
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
    required TResult Function(_DatePickerUpdate value) datePickerUpdate,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DatePickerUpdate value)? datePickerUpdate,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DatePickerUpdate value)? datePickerUpdate,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BirthdayState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_DatePickerUpdateCopyWith<$Res> {
  factory _$$_DatePickerUpdateCopyWith(
          _$_DatePickerUpdate value, $Res Function(_$_DatePickerUpdate) then) =
      __$$_DatePickerUpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime value});
}

/// @nodoc
class __$$_DatePickerUpdateCopyWithImpl<$Res>
    extends _$BirthdayStateCopyWithImpl<$Res, _$_DatePickerUpdate>
    implements _$$_DatePickerUpdateCopyWith<$Res> {
  __$$_DatePickerUpdateCopyWithImpl(
      _$_DatePickerUpdate _value, $Res Function(_$_DatePickerUpdate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_DatePickerUpdate(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_DatePickerUpdate implements _DatePickerUpdate {
  const _$_DatePickerUpdate(this.value);

  @override
  final DateTime value;

  @override
  String toString() {
    return 'BirthdayState.datePickerUpdate(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DatePickerUpdate &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DatePickerUpdateCopyWith<_$_DatePickerUpdate> get copyWith =>
      __$$_DatePickerUpdateCopyWithImpl<_$_DatePickerUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DateTime value) datePickerUpdate,
  }) {
    return datePickerUpdate(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DateTime value)? datePickerUpdate,
  }) {
    return datePickerUpdate?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DateTime value)? datePickerUpdate,
    required TResult orElse(),
  }) {
    if (datePickerUpdate != null) {
      return datePickerUpdate(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DatePickerUpdate value) datePickerUpdate,
  }) {
    return datePickerUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DatePickerUpdate value)? datePickerUpdate,
  }) {
    return datePickerUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DatePickerUpdate value)? datePickerUpdate,
    required TResult orElse(),
  }) {
    if (datePickerUpdate != null) {
      return datePickerUpdate(this);
    }
    return orElse();
  }
}

abstract class _DatePickerUpdate implements BirthdayState {
  const factory _DatePickerUpdate(final DateTime value) = _$_DatePickerUpdate;

  DateTime get value;
  @JsonKey(ignore: true)
  _$$_DatePickerUpdateCopyWith<_$_DatePickerUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}
