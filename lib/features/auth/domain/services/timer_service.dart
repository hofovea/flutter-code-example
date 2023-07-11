import 'dart:async';

class TimerService {
  static const Duration _tickInterval = Duration(seconds: 1);
  late Duration _timerDuration;
  void Function(Duration timeLeftString)? _onTickCallback;
  Function? _onCompleteCallback;
  Timer? _timer;

  void setupTimerCallbacks({
    required Duration timerDuration,
    required void Function(Duration timeLeftString) onTickCallback,
    Function? onComplete,
  }) {
    _timerDuration = timerDuration;
    _onTickCallback = onTickCallback;
    _onCompleteCallback = onComplete;
  }

  void _onTick(Duration leftUntilTimerExpiration) {
    if (_onTickCallback != null) {
      _onTickCallback!(leftUntilTimerExpiration);
    }
  }

  void startTimer() {
    Duration leftUntilTimerExpiration = _timerDuration;
    _timer = Timer.periodic(
      _tickInterval,
      (timer) {
        leftUntilTimerExpiration = leftUntilTimerExpiration - _tickInterval;
        _onTick(leftUntilTimerExpiration);
        if (leftUntilTimerExpiration.inSeconds == 0) {
          timer.cancel();
          if (_onCompleteCallback != null) {
            _onCompleteCallback!();
          }
        }
      },
    );
  }

  void cancelCallbacks() {
    _onTickCallback = null;
    _onCompleteCallback = null;
  }

  void forceCancel() {
    if (_timer != null) {
      cancelCallbacks();
      _timer!.cancel();
    }
  }
}
