import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:code_example/features/auth/presentation/screens/password_recovery_screen/subflows/password_input/widgets/requirement_checker_bloc/recovery_requirement_checker_bloc.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';

class RecoveryRequirementCheckerRow extends StatelessWidget {
  final TextEditingController controller;
  final RegExp regExp;
  final String requirement;
  final Widget check;

  const RecoveryRequirementCheckerRow({
    Key? key,
    required this.controller,
    required this.regExp,
    required this.requirement,
    required this.check,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RecoveryRequirementCheckerBloc()
        ..add(const RecoveryRequirementCheckerEvent.hasMismatch()),
      child: BlocConsumer<RecoveryRequirementCheckerBloc,
          RecoveryRequirementCheckerState>(
        listener: (context, state) {
          controller.addListener(
            () {
              if (regExp.hasMatch(controller.text)) {
                BlocProvider.of<RecoveryRequirementCheckerBloc>(context)
                    .add(const RecoveryRequirementCheckerEvent.hasMatch());
              } else {
                BlocProvider.of<RecoveryRequirementCheckerBloc>(context)
                    .add(const RecoveryRequirementCheckerEvent.hasMismatch());
              }
            },
          );
        },
        builder: (context, state) {
          return Row(
            children: [
              Text(
                requirement,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: state.when(
                        match: () => AppColors.hintText,
                        mismatch: () => AppColors.textDetail,
                      ),
                    ),
              ),
              SizedBox(
                height: gapBetweenPasswordRequirements,
                width: gapBetweenPasswordRequirements,
                child: Visibility(
                  visible: state.when(
                    match: () => true,
                    mismatch: () => false,
                  ),
                  child: check,
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
