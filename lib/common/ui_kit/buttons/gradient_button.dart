import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:code_example/core/presentation/routing/app_router.gr.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:code_example/common/ui_kit/ui_constants.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';

class GradientButton extends StatelessWidget {
  final String buttonText;

  const GradientButton({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: OutlineGradientButton(
        onTap: () {
          AutoRouter.of(context).push(
            PhoneOrEmailRoute(),
          );
        },
        radius: const Radius.circular(UIConstants.borderRadius),
        strokeWidth: UIConstants.strokeWidth,
        gradient: AppColors.brandGradient,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonText,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(color: AppColors.brandColor),
            ),
          ],
        ),
      ),
    );
  }
}
