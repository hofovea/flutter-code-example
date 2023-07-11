import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/sign_up/password/presentation/widgets/requirement_checker/requirement_checker_bloc.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';

class RequirementCheckerRow extends StatelessWidget {
  final TextEditingController controller;
  final RegExp regExp;
  final String requirement;
  final Widget check;

  const RequirementCheckerRow({
    Key? key,
    required this.controller,
    required this.regExp,
    required this.requirement,
    required this.check,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RequirementCheckerBloc()
        ..add(const RequirementCheckerEvent.hasMismatch()),
      child: BlocConsumer<RequirementCheckerBloc, RequirementCheckerState>(
        listener: (context, state) {
          controller.addListener(
            () {
              if (regExp.hasMatch(controller.text)) {
                BlocProvider.of<RequirementCheckerBloc>(context)
                    .add(const RequirementCheckerEvent.hasMatch());
              } else {
                BlocProvider.of<RequirementCheckerBloc>(context)
                    .add(const RequirementCheckerEvent.hasMismatch());
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
