import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:code_example/common/app_colors/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/set_profile/bio/bio_constants.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/set_profile/bio/widgets/bio_input/bloc/bio_input_bloc.dart';

class BioInput extends StatelessWidget {
  final void Function(String bio)? onBioReady;
  final VoidCallback? onBioInvalid;
  final TextEditingController? controller;

  const BioInput({
    Key? key,
    this.onBioReady,
    this.onBioInvalid,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BioInputBloc(),
      child: BlocConsumer<BioInputBloc, BioInputState>(
        listener: (BuildContext context, state) {
          state.maybeWhen(
            inputValid: (length, input) {
              onBioReady?.call(input);
            },
            inputInvalid: (_) {
              onBioInvalid?.call();
            },
            orElse: () {},
          );
        },
        builder: (BuildContext context, state) {
          return Stack(
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  counterText: ' ',
                  hintText: AppLocalizations.of(context)!.bioHint,
                  errorText: state.maybeWhen(
                    inputInvalid: (length) => AppLocalizations.of(context)!
                        .bioLengthError(maxBioLength),
                    orElse: () => null,
                  ),
                ),
                maxLines: maxLinesBio,
                onChanged: (input) {
                  BlocProvider.of<BioInputBloc>(context).add(
                    BioInputEvent.inputChanged(input),
                  );
                },
              ),
              Positioned.directional(
                textDirection: Directionality.of(context),
                end: offsetFromEnd,
                bottom: offsetFromBottom,
                child: Text(
                  state.when(
                    initial: () => maxBioLength.toString(),
                    inputValid: (length, input) => length.toString(),
                    inputInvalid: (length) => length.toString(),
                  ),
                  style: const TextStyle(color: AppColors.textDetail),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
