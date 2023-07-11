import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:code_example/common/ui_kit/app_bars/empty_app_bar.dart';
import 'package:code_example/core/presentation/routing/app_router.gr.dart';
import 'package:code_example/core/presentation/wrappers/authorized_flow_wrapper/bloc/authorized_flow_bloc.dart';
import 'package:code_example/core/presentation/wrappers/unauthorized_flow_wrapper/bloc/unauthorized_flow_bloc.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/set_profile/bio/bio_constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/set_profile/bio/bloc/bio_screen_bloc.dart';
import 'package:code_example/features/auth/presentation/screens/sign_up_screen/set_profile/bio/widgets/bio_input/bio_input.dart';

class BioScreen extends StatelessWidget {
  final Uint8List? avatar;
  final String? city;

  const BioScreen({Key? key, this.avatar, this.city}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? bioToSubmit;

    return BlocProvider(
      create: (context) => BioScreenBloc(),
      child: BlocBuilder<BioScreenBloc, BioScreenState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: Scaffold(
              appBar: EmptyAppBar(
                onPressed: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  context.router.replace(
                    CityRoute(
                      city: city,
                      avatar: avatar,
                    ),
                  );
                },
              ),
              body: Center(
                child: Column(
                  children: [
                    const SizedBox(height: gapFromAppBar),
                    Padding(
                      padding: const EdgeInsets.only(bottom: titlePadding),
                      child: Text(AppLocalizations.of(context)!.bioTitle,
                          style: Theme.of(context).textTheme.headlineLarge),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: textInputVerticalPadding,
                        horizontal: widePadding,
                      ),
                      child: BioInput(
                        onBioReady: (String bio) {
                          bioToSubmit = bio;
                          BlocProvider.of<BioScreenBloc>(context).add(
                            const BioScreenEvent.enableNext(),
                          );
                        },
                        onBioInvalid: () {
                          BlocProvider.of<BioScreenBloc>(context).add(
                            const BioScreenEvent.disableNext(),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: widePadding),
                      child: SizedBox(
                        width: buttonWidth,
                        height: buttonHeight,
                        child: ElevatedButton(
                          onPressed: state.when(
                            nextEnabled: () => () {
                              FocusManager.instance.primaryFocus?.unfocus();
                              BlocProvider.of<AuthorizedFlowBloc>(context)
                                  .add(
                                AuthorizedFlowEvent.finishOptionalSetupFlow(
                                  avatar,
                                  city,
                                  bioToSubmit,
                                ),
                              );
                            },
                            nextDisabled: () => null,
                          ),
                          child: Text(AppLocalizations.of(context)!.next),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
