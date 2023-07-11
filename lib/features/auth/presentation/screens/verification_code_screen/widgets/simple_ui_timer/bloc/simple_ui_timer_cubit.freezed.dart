// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_ui_timer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SimpleUiTimerState {
  Duration get timeLeft => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration timeLeft) timerUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration timeLeft)? timerUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration timeLeft)? timerUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimerUpdate value) timerUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TimerUpdate value)? timerUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimerUpdate value)? timerUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimpleUiTimerStateCopyWith<SimpleUiTimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleUiTimerStateCopyWith<$Res> {
  factory $SimpleUiTimerStateCopyWith(
          SimpleUiTimerState value, $Res Function(SimpleUiTimerState) then) =
      _$SimpleUiTimerStateCopyWithImpl<$Res, SimpleUiTimerState>;
  @useResult
  $Res call({Duration timeLeft});
}

/// @nodoc
class _$SimpleUiTimerStateCopyWithImpl<$Res, $Val extends SimpleUiTimerState>
    implements $SimpleUiTimerStateCopyWith<$Res> {
  _$SimpleUiTimerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeLeft = null,
  }) {
    return _then(_value.copyWith(
      timeLeft: null == timeLeft
          ? _value.timeLeft
          : timeLeft // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimerUpdateCopyWith<$Res>
    implements $SimpleUiTimerStateCopyWith<$Res> {
  factory _$$_TimerUpdateCopyWith(
          _$_TimerUpdate value, $Res Function(_$_TimerUpdate) then) =
      __$$_TimerUpdateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration timeLeft});
}

/// @nodoc
class __$$_TimerUpdateCopyWithImpl<$Res>
    extends _$SimpleUiTimerStateCopyWithImpl<$Res, _$_TimerUpdate>
    implements _$$_TimerUpdateCopyWith<$Res> {
  __$$_TimerUpdateCopyWithImpl(
      _$_TimerUpdate _value, $Res Function(_$_TimerUpdate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeLeft = null,
  }) {
    return _then(_$_TimerUpdate(
      null == timeLeft
          ? _value.timeLeft
          : timeLeft // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_TimerUpdate extends _TimerUpdate {
  const _$_TimerUpdate(this.timeLeft) : super._();

  @override
  final Duration timeLeft;

  @override
  String toString() {
    return 'SimpleUiTimerState.timerUpdate(timeLeft: $timeLeft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimerUpdate &&
            (identical(other.timeLeft, timeLeft) ||
                other.timeLeft == timeLeft));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeLeft);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimerUpdateCopyWith<_$_TimerUpdate> get copyWith =>
      __$$_TimerUpdateCopyWithImpl<_$_TimerUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration timeLeft) timerUpdate,
  }) {
    return timerUpdate(timeLeft);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration timeLeft)? timerUpdate,
  }) {
    return timerUpdate?.call(timeLeft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration timeLeft)? timerUpdate,
    required TResult orElse(),
  }) {
    if (timerUpdate != null) {
      return timerUpdate(timeLeft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimerUpdate value) timerUpdate,
  }) {
    return timerUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TimerUpdate value)? timerUpdate,
  }) {
    return timerUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimerUpdate value)? timerUpdate,
    required TResult orElse(),
  }) {
    if (timerUpdate != null) {
      return timerUpdate(this);
    }
    return orElse();
  }
}

abstract class _TimerUpdate extends SimpleUiTimerState {
  const factory _TimerUpdate(final Duration timeLeft) = _$_TimerUpdate;
  const _TimerUpdate._() : super._();

  @override
  Duration get timeLeft;
  @override
  @JsonKey(ignore: true)
  _$$_TimerUpdateCopyWith<_$_TimerUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}
