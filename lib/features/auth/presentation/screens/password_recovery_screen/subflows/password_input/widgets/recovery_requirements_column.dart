import 'package:flutter/material.dart';
import 'package:code_example/core/presentation/validation/validation_util.dart';
import 'package:code_example/features/auth/presentation/screens/password_recovery_screen/subflows/password_input/widgets/recovery_requirement_checker_row.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/sign_up/password/presentation/widgets/check_icon.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/style_constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RecoveryRequirementsColumn extends StatelessWidget {
  final TextEditingController passwordController;

  const RecoveryRequirementsColumn({
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
              RecoveryRequirementCheckerRow(
                controller: passwordController,
                regExp: passwordCharactersAmountValidationRegExp,
                requirement: AppLocalizations.of(context)!.characters,
                check: const CheckIcon(),
              ),
              const SizedBox(width: gapBetweenPasswordRequirements),
              RecoveryRequirementCheckerRow(
                controller: passwordController,
                regExp: passwordAtLeastOneUpperCaseRegExp,
                requirement: AppLocalizations.of(context)!.uppercase,
                check: const CheckIcon(),
              ),
              const SizedBox(width: gapBetweenPasswordRequirements),
              RecoveryRequirementCheckerRow(
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
              RecoveryRequirementCheckerRow(
                controller: passwordController,
                regExp: passwordAtLeastOneDigitRegExp,
                requirement: AppLocalizations.of(context)!.digit,
                check: const CheckIcon(),
              ),
              const SizedBox(width: gapBetweenPasswordRequirements),
              RecoveryRequirementCheckerRow(
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
