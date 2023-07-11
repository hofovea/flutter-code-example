import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:code_example/features/auth/domain/services/timer_service.dart';
import 'package:code_example/features/auth/presentation/screens/verification_code_screen/widgets/simple_ui_timer/bloc/simple_ui_timer_cubit.dart';
import 'package:code_example/di/di_container.dart' as di;

class SimpleUiTimer extends StatelessWidget {
  final Duration timerDuration;
  final Function? onComplete;

  const SimpleUiTimer({
    Key? key,
    required this.timerDuration,
    required this.onComplete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SimpleUiTimerCubit(
        timerDuration,
        onComplete,
        di.serviceLocator<TimerService>(),
      ),
      child: BlocBuilder<SimpleUiTimerCubit, SimpleUiTimerState>(
        builder: (context, state) {
          return state.when(
            timerUpdate: (Duration timeLeft) {
              timerDuration.inSeconds;
              return Text(
                state.formatDuration(timeLeft),
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      color: AppColors.primary,
                    ),
              );
            },
          );
        },
      ),
    );
  }
}
