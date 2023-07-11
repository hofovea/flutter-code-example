part of 'simple_ui_timer_cubit.dart';

@freezed
class SimpleUiTimerState with _$SimpleUiTimerState {
  const SimpleUiTimerState._();

  const factory SimpleUiTimerState.timerUpdate(Duration timeLeft) =
      _TimerUpdate;

  String formatDuration(Duration duration) {
    const int startDurationStringPosition = 2;
    const int endDurationStringPosition = 7;

    return duration.toString().substring(
          startDurationStringPosition,
          endDurationStringPosition,
        );
  }
}
