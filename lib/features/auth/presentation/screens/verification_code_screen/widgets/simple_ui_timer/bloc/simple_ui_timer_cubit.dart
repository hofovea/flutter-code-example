import 'package:bloc/bloc.dart';
import 'package:code_example/features/auth/domain/services/timer_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'simple_ui_timer_state.dart';

part 'simple_ui_timer_cubit.freezed.dart';

class SimpleUiTimerCubit extends Cubit<SimpleUiTimerState> {
  final Duration timerDuration;
  final Function? onComplete;
  final TimerService _timerService;

  SimpleUiTimerCubit(this.timerDuration, this.onComplete, this._timerService)
      : super(
          SimpleUiTimerState.timerUpdate(timerDuration),
        ) {
    _timerService.setupTimerCallbacks(
      timerDuration: timerDuration,
      onComplete: onComplete,
      onTickCallback: (Duration timeLeft) {
        if (!isClosed) {
          emit(
            SimpleUiTimerState.timerUpdate(
              timeLeft,
            ),
          );
        }
      },
    );
    _timerService.startTimer();
  }

  @override
  Future<void> close() async {
    _timerService.forceCancel();
    return await super.close();
  }
}
