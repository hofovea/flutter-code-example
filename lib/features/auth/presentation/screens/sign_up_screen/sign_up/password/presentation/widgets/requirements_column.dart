import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:code_example/core/presentation/validation/validation_util.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/sign_up/password/presentation/widgets/check_icon.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/sign_up/password/presentation/widgets/requirement_checker_row.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';

class RequirementsColumn extends StatelessWidget {
  final TextEditingController passwordController;

  const RequirementsColumn({
    Key? key,
    required this.passwordController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: widePadding,
          ),
          child: Row(
            children: [
              RequirementCheckerRow(
                controller: passwordController,
                regExp: passwordCharactersAmountValidationRegExp,
                requirement: AppLocalizations.of(context)!.characters,
                check: const CheckIcon(),
              ),
              const SizedBox(width: gapBetweenPasswordRequirements),
              RequirementCheckerRow(
                controller: passwordController,
                regExp: passwordAtLeastOneUpperCaseRegExp,
                requirement: AppLocalizations.of(context)!.uppercase,
                check: const CheckIcon(),
              ),
              const SizedBox(width: gapBetweenPasswordRequirements),
              RequirementCheckerRow(
                controller: passwordController,
                regExp: passwordAtLeastOneLowerCaseRegExp,
                requirement: AppLocalizations.of(context)!.lowercase,
                check: const CheckIcon(),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: widePadding,
          ),
          child: Row(
            children: [
              RequirementCheckerRow(
                controller: passwordController,
                regExp: passwordAtLeastOneDigitRegExp,
                requirement: AppLocalizations.of(context)!.digit,
                check: const CheckIcon(),
              ),
              const SizedBox(width: gapBetweenPasswordRequirements),
              RequirementCheckerRow(
                controller: passwordController,
                regExp: passwordAtLeastOneSpecialCharacterRegExp,
                requirement: AppLocalizations.of(context)!.specialCharacter,
                check: const CheckIcon(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
